module Refinery
  module Mailinglists
    module Admin
      class SettingsController < Refinery::AdminController

        crudify :'refinery/setting',
                :title_attribute => 'name',
                :order => 'name ASC',
                :redirect_to_url => 'refinery.mailinglists_admin_subscribers_path'

        before_filter :redirect_back_to_mailinglists?, :only => [:index]
        before_filter :set_url_override?, :only => [:edit, :update]
        after_filter :save_subject_for_confirmation?, :only => [:create, :update]
        around_filter :rewrite_flash?, :only => [:create, :update]

        def edit
          @setting = Refinery::Setting.find(params[:id])
        end

        def update
          @setting = Refinery::Setting.find(params[:id])

          if @setting.update_attributes(params[:setting])
            flash[:notice] = t('refinery.crudify.updated', :what => @setting.name.gsub("mailinglist_", "").titleize)

            unless request.xhr? or from_dialog?
              redirect_back_or_default(refinery.mailinglists_admin_subscribers_path)
            else
              render :text => "<script type='text/javascript'>parent.window.location = '#{refinery.mailinglists_admin_subscribers_path}';</script>"
            end
          end
        end

      protected
        def rewrite_flash?
          yield

          flash[:notice] = flash[:notice].to_s.gsub(/(\'.*\')/) {|m| m.titleize}.gsub('Mailinglist ', '')
        end

        def save_subject_for_confirmation?
          Refinery::Mailinglists::Setting.confirmation_subject = params[:subject] if params.keys.include?('subject')
        end

        def redirect_back_to_mailinglists?
          redirect_to refinery.mailinglists_admin_subscribers_path
        end

        def set_url_override?
          @url_override = refinery.mailinglists_admin_setting_url(@setting, :dialog => from_dialog?)
        end

        def find_setting
          # ensure that we're dealing with the name of the setting, not the id.
          if params[:id].to_s.to_i.to_s == params[:id]
            params[:id] = Refinery::Setting.find(params[:id]).name.to_s
          end

          # prime the setting first, if it's valid.
          if Refinery::Mailinglists::Setting.methods.map(&:to_sym).include?(params[:id].to_s.gsub('mailinglist_', '').to_sym)
            Refinery::Mailinglists::Setting.send(params[:id].to_s.gsub('mailinglist_', '').to_sym)
          end
          @setting = Refinery::Setting.find_by_name(params[:id])
        end

      end
    end
  end
end
