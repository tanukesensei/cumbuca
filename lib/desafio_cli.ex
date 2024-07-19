defmodule DesafioCli do

  def main(_args) do
    IO.puts """
    Ferramenta de numeração de reis e rainhas de Cumbúquia
    Insira uma lista de nomes, um nome por linha. A lista será finalizada quando uma linha em branco for inserida.
    """
    names = read_lines_until_blank()
    numbered_names = Cumbuquia.rename_royal_names(names)
    Enum.each(numbered_names, &IO.puts/1)
  end

  def read_lines_until_blank do
    names = []
    Enum.reverse(read_lines_until_blank(names))
  end

  def read_lines_until_blank(names) do
    case String.trim(IO.gets("")) do
      "" -> names
      name -> read_lines_until_blank([String.trim(name) | names])
    end
  end
end
