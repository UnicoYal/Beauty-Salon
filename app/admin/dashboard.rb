# frozen_string_literal: true

ActiveAdmin.register_page 'Dashboard' do
  menu priority: 1, label: proc { I18n.t('active_admin.dashboard') }

  content title: proc { I18n.t('active_admin.dashboard') } do
    div class: 'blank_slate_container', id: 'dashboard_default_message' do
    end

    columns do
      column do
        panel 'Последние изменения в отделе "Мужской зал"' do
          ul do
            ManHairCut.order('id DESC').limit(5).map do |rec|
              li link_to(rec.title, admin_man_hair_cut_path(rec))
            end
          end
        end
      end

      column do
        panel 'Последние изменения в отделе "Женский зал"' do
          ul do
            WomenHairCut.order('id DESC').limit(5).map do |rec|
              li link_to(rec.title, admin_women_hair_cut_path(rec))
            end
          end
        end
      end

      column do
        panel 'Последние изменения в отделе "Макияж"' do
          ul do
            Makeup.order('id DESC').limit(5).map do |rec|
              li link_to(rec.title, admin_makeup_path(rec))
            end
          end
        end
      end

      column do
        panel 'Последние изменения в отделе "Маникюр"' do
          ul do
            Manicure.order('id DESC').limit(5).map do |rec|
              li link_to(rec.title, admin_manicure_path(rec))
            end
          end
        end
      end

      column do
        panel 'Последние изменения в отделе "Педикюр"' do
          ul do
            Pedicure.order('id DESC').limit(5).map do |rec|
              li link_to(rec.title, admin_pedicure_path(rec))
            end
          end
        end
      end

      column do
        panel 'Последние изменения в отделе "Женская депиляция"' do
          ul do
            Depilation.order('id DESC').limit(5).map do |rec|
              li link_to(rec.title, admin_depilation_path(rec))
            end
          end
        end
      end
    end
  end
end
