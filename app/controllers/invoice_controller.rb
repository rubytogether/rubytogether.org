class InvoiceController < ApplicationController

  def show
    raise ActiveRecord::RecordNotFound unless Rails.env.development?

    @membership = Membership.find(params[:id])
    @bank_info = Rails.configuration.bank_info.map{|k,v| "#{k.humanize}: #{v}" }
    @amount = @membership.plan.amount / 100 * 12
    respond_to do |format|
      format.pdf do
        response.headers["Content-Type"] = "text/html" if params.has_key?(:debug)
        render show_as_html: params.has_key?(:debug),
          pdf: "#{Date.today.iso8601} Ruby Together Invoice",
          margin: {top: 0, right: 0, bottom: 0, left: 0}
      end
    end
  end

end
