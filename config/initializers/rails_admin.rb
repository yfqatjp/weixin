RailsAdmin.config do |config|

  config.authorize_with do
    redirect_to main_app.root_path unless is_admin?
  end
  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  # config.model 'User' do
  #   edit do
  #     exclude_fields :admin
  #   end
  # end

  config.model 'User' do
    navigation_label '用户'
    weight -1
    edit do
      field :name do
        label '姓名'
      end
      field :email do
        label '邮箱'
      end
      field :da_courses do
        label '大课程'
      end
      field :xiao_courses do
        label '小课程'
      end
      field :playtime do
        label '已播时间(秒)'
      end
      field :buytime do
        label '每周总时间(小时)'
      end
      field :expiredate do
        label '帐号到期日期'
      end
      field :admin do
        label 'admin'
      end
    end
    list do
      field :name do
        label '姓名'
      end
      field :email do
        label '邮箱'
      end
      field :da_courses do
        label '大课程'
      end
      field :xiao_courses do
        label '小课程'
      end
      field :playtime do
        label '已播时间(秒)'
      end
      field :buytime do
        label '每周总时间(小时)'
      end
      field :expiredate do
        label '帐号到期日期'
      end
      field :admin do
        label 'admin'
      end
    end
  end

  config.model 'DaCourse' do
    navigation_label '大课程'
    edit do
      field :content do
        label '标题'
      end
      field :imageurl do
        label '图片链接'
      end
    end
    list do
      field :content do
        label '标题'
      end
      field :imageurl do
        label '图片链接'
      end
    end
  end

  config.model 'XiaoCourse' do
    navigation_label '小课程'
    edit do
      field :content do
        label '标题'
      end
      field :imageurl do
        label '图片链接'
      end
      field :da_course do
        label '大课程'
      end
    end
    list do
      field :content do
        label '标题'
      end
      field :imageurl do
        label '图片链接'
      end
      field :da_course do
        label '大课程'
      end
    end
  end

  config.model 'Course' do
    navigation_label '课程视频'
    weight 1
    edit do
      field :content do
        label '标题'
      end
      field :imageurl do
        label '图片链接'
      end
      field :videourl do
        label '视频链接'
      end
      field :xiao_course do
        label '小课程'
      end
      field :da_course do
        label '大课程'
      end
    end
    list do
      field :content do
        label '标题'
      end
      field :imageurl do
        label '图片链接'
      end
      field :videourl do
        label '视频链接'
      end
      field :xiao_course do
        label '小课程'
      end
      field :da_course do
        label '大课程'
      end
    end
  end

  config.model 'UserCourse' do
    visible false
  end

end
