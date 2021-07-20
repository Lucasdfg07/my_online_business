require 'prawn'

module CertificatePdf
  PDF_OPTIONS = {
    # Escolhe o Page size como uma folha A4
    :page_size   => "A5",
    # Define o formato do layout como portrait (poderia ser landscape)
    :page_layout => :landscape,
    # Define a margem do documento
    :margin      => [120, 75],

    :background => "#{Rails.root.to_s}/app/assets/images/certificate_wallpaper.jpg"
  }

  def self.certificate user
      Prawn::Document.new(PDF_OPTIONS) do |pdf|
        pdf.fill_color "40464e"

        pdf.text "Certificado de Parabenização", align: :center, size: 24
        pdf.move_down 50

        pdf.text "Parabenizamos o #{user.name}, por concluir as etapas do <b>Meu Negócio Online</b>, certificando-o como comemoração a colocar seu negócio online!", :inline_format => true

        pdf.number_pages "Gerado: #{(Time.now).strftime("%d/%m/%y as %H:%M")}", :start_count_at => 0, :page_filter => :all, :at => [pdf.bounds.right - 140, -50], :align => :right, :size => 8
      end
  end
end