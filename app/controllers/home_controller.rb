require './lib/certificate_pdf'

class HomeController < ApplicationController
    skip_before_action :authenticate_user!


    def index
    end

    def export_pdf
        pdf = CertificatePdf::certificate(current_user)
        send_data pdf.render, filename: 'relatorio.pdf', 
        type: 'application/pdf', disposition: 'inline'
    end
end
