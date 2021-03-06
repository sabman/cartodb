class DataObservatoryMailer < ActionMailer::Base

  CARTO_REQUEST_RECIPIENT = 'dataobservatory@carto.com'.freeze
  EXCLUDED_ORGS = %w(team solutionscdb).freeze

  default from: Cartodb.get_config(:mailer, 'from')
  layout 'mail'

  def user_request(user, dataset_name, provider_name)
    subject = 'Your premium dataset request to CARTO'
    @user_name = user.name
    @dataset_name = dataset_name
    @provider_name = provider_name

    mail to: user.email, subject: subject
  end

  def carto_request(user, dataset_id, delivery_days)
    subject = 'Dataset request'
    @user_name = user.name
    @user_email = user.email
    @dataset_id = dataset_id
    @delivery_days = delivery_days

    unless Rails.env.staging? || EXCLUDED_ORGS.include?(user.organization&.name)
      mail to: CARTO_REQUEST_RECIPIENT, subject: subject
    end
  end
end
