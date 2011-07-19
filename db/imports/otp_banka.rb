#require '/config/boot.rb'
require 'rails/all'
#require 'db/imports/liferay_import.rb'

begin
  Fee.delete_all()

  #  f = 'db/imports/a1.utf' # 05
  lists = [
    {'file' => 'db/imports/a1.utf', 'month' => 5},
    {'file' => 'db/imports/a2.utf', 'month' => 6},
    {'file' => 'db/imports/a3.utf', 'month' => 4},
    {'file' => 'db/imports/a4.utf', 'month' => 1},
    {'file' => 'db/imports/a5.utf', 'month' => 2},
    {'file' => 'db/imports/a6.utf', 'month' => 3},
  ]
  
#processing: db/imports/a3.utf : 4
#| 20,00 | 2612906427/1100 | progressbar; VAJSOVÁ MARTINA
#processing: db/imports/a4.utf : 1
#| 40,00 | 2612906427/1100 | clenske dec+jan; VAJSOVÁ MARTINA
#processing: db/imports/a5.utf : 2
#0 | 20,00 | 2612906427/1100 | ...
#0 | 20,00 | 2612906427/1100 | progressbar
#22011 | 20,00 | 178266295/0900 | Adriana Danilakova
#processing: db/imports/a6.utf : 3
#| 20,00 | 2612906427/1100 | progressbar; VAJSOVÁ MARTINA
#2011 | 20,00 | 178266295/0900 | Adriana Danilakova; Daniláková Adriána
#| 40,00 | 2612906427/1100 | nerciss; VAJSOVÁ MARTINA
#

  def import_fees_from_file(f, m)
    fo = File.open(f, 'r').read
    #  fm = fo.match(/([^-]+)/)
    blocks = fo.split('----------------------------------------------------------------------------')

    blocks.each do |block|
      block = block.strip!
      amount = 0
      month = m
      currency = 'eur'
      year = 2011
      user_id = 0
      vs = 0
      msg = ''
      from_account = ''

      if block.match(/^[0-9]{0,2}\/([0-9]{0,2}) Platba/)
        l1 = block.match(/^[0-9]{0,2}\/([0-9]{0,2}) Platba[^0-9]+([0-9]+\/[0-9]+)\s+(\S+)\s*$/)
        l2 = block.match(/^[ ]{6}([0-9].+)\n/)
        l3 = block.match(/protiúčet: (.+)\n/)
        l4 = block.match(/Spr.: (.+)/)
        if l1 && l2
          l1_parse = l1[0].match(/([0-9]+\/[0-9]+)\s+([0-9]+,[0-9]{2})/)
          l2_parse = l2[1].match(/[0-9]*~0*([0-9]+)~/)

          #  finally we can process this item
          if l2_parse && l2_parse[1] && l1_parse && l1_parse[1] && l1_parse[2]
            from_account = l1_parse[1]
            amount = l1_parse[2]
            vs = l2_parse[1]
            user = User.where(:progressbar_uid => vs)
            msg = "#{l4[1].to_s}" unless (!l4 || !l4[1])
            msg << "; #{l3[1]}" if (l3 && l3[1])
            if user.empty?              
              puts "#{vs.to_s} | #{amount.to_s} | #{from_account.to_s} | #{msg.to_s} "
            else
              #            puts "#{vs} | #{user.first.username} | #{amount} | #{from} | #{msg}"
              f = Fee.create(
                :from_account => from_account,
                :message => msg,
                :vs => vs,
                :amount => amount,
                :currency => currency,
                :month => month,
                :year => year,
                :user_id => user.first.id
              )
              if !f.valid?
                puts "#{vs.to_s} | #{user.first.username.to_s} | #{amount.to_s} | #{from_account.to_s} | #{msg.to_s}"
              else
#                puts "succ: #{vs.to_s} | #{user.first.username.to_s} | #{amount.to_s} | #{from_account.to_s} | #{msg.to_s}"
              end
            end
          end
        end
      end
    end
  end
  
  lists.each do |list|
    puts "processing: #{list['file']} : #{list['month']}"
    import_fees_from_file(list['file'], list['month'])
  end

  #rescue NameError
  #  puts 'name err'
end
