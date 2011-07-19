#require '/config/boot.rb'
require 'rails/all'
#require 'db/imports/liferay_import.rb'

begin
  f = 'db/imports/a6.utf'

  fo = File.open(f, 'r').read
#  fm = fo.match(/([^-]+)/)
  blocks = fo.split('----------------------------------------------------------------------------')

  blocks.each do |block|
    block = block.strip!
    amount = 0
    month = 5
    year = 2011
    user_id = 0
    vs = 0
    msg = ''
    from = ''
   
    if block.match(/^[0-9]{0,2}\/([0-9]{0,2}) Platba/)
      l1 = block.match(/^[0-9]{0,2}\/([0-9]{0,2}) Platba[^0-9]+([0-9]+\/[0-9]+)\s+(\S+)\s*$/)
      l2 = block.match(/^[ ]{6}([0-9].+)\n/)
      l3 = block.match(/protiúčet: (.+)\n/)
      l4 = block.match(/Spr.: (.+)/)
      if l1 && l2
        l1_parse = l1[0].match(/([0-9]+\/[0-9]+)\s+([0-9]+,[0-9]{2})/)
        l2_parse = l2[1].match(/[0-9]+~0*([0-9]+)~/)
                
        #  finally we can process this item
        if l2_parse && l2_parse[1] && l1_parse && l1_parse[1] && l1_parse[2]
          from = l1_parse[1]
          amount = l1_parse[2]
          vs = l2_parse[1]
          user = User.where(:progressbar_uid => vs)
          msg = "#{l4[1].to_s}" unless (!l4 || !l4[1])
          msg << "; #{l3[1]}" if (l3 && l3[1])
          if user.empty?
            puts "#{vs} | #{amount} | #{from} | #{msg}"
          else
            puts "#{vs} | #{user.first.username} | #{amount} | #{from} | #{msg}"            
          end
        end
      end
    end
  end
#  ([^-]+)
#
#
#  File.open(f).each do |line|
#    #    out << line.gsub("8","5")
#    if (line.match(/^[0-9]{0,2}\/([0-9]{0,2}) Platba[^0-9]+([0-9]+\/[0-9]+)\s+(\S+)\s*$/))
#      l1 = line.match(/^[0-9]{0,2}\/([0-9]{0,2}) Platba[^0-9]+([0-9]+\/[0-9]+)\s+(\S+)\s*$/)
#    end
#
#    if (line.match(/protiúčet: ([^\n]+)$/))
#      l2 = line.match(/protiúčet: ([^\n]+)$/)
#      u = User.where(:username => l2[1])
#      puts u.id
#    end
#
#
##    if (line.match(/protiúčet: ([^\n]+)$/))
##      l2 = line.match(/protiúčet: ([^\n]+)$/)
##      u = User.where(:username => l2[1])
##      puts u.id
##    end
#
#    if (line.match(/^Spr.: ([^\n]+)$/))
#      l3 = line.match(/^Spr.: ([^\n]+)$/)
#
#    end
#  end
  #rescue NameError
  #  puts 'name err'
end
