module IconHelper
  # * Genera un icono SVG a partir del nombre del archivo.
  def icon(name, options = {})
    # * Busca el archivo SVG dentro de la carpeta de iconos.
    file = Rails.root.join("app/assets/images/icons/#{name}.svg")

    # ! Retorna vacío si el icono no existe.
    return "" unless File.exist?(file)

    # * Lee el contenido del archivo SVG.
    svg = File.read(file)

    # * Agrega las clases CSS recibidas.
    if options[:class]
      svg = svg.sub("<svg", "<svg class=\"#{options[:class]}\"")
    end

    # * Permite renderizar el SVG directamente como HTML.
    svg.html_safe
  end
end