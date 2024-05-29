class RedirectsController < ApplicationController
  def index
  end

  def vulnerable
    redirect_to params[:url]
  end

  def secure
    redirect_to params[:url], allow_other_host: false
  rescue ActionController::Redirecting::UnsafeRedirectError
    redirect_to root_path, alert: "Unsafe redirect detected, redirected to home page."
  end

  private

  def url_from(url)
    uri = URI.parse(url)
    if uri.host.nil? || uri.host == request.host
      uri.path
    else
      false
    end
  rescue URI::InvalidURIError
    false
  end
end
