module NoticiaHelper
  def shorten(cuerpo)
    if cuerpo.length <= 500
      return cuerpo
    else
      return truncate(cuerpo, length:500)
    end
  end
end
