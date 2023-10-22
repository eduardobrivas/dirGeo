
# Função dirGeo: Cria uma estrutura de diretórios com pastas numeradas sequencialmente,
# e subpastas chamadas "FOTOS" e "SHP" dentro de cada pasta numerada.

# Argumentos:
#' @param  caminho O diretório raiz onde a estrutura será criada.
#' @param  nome_pasta O nome base para as pastas (por exemplo, "PASTA" resultará em pastas chamadas "PASTA001", "PASTA002", ...).
#' @param  quantidade O número de pastas sequenciais a serem criadas.
#' @param  n O índice inicial para numerar as pastas (o padrão é 1).
#' @example dirGeo ("caminho/raiz", "nome_da_pasta", 5)
#'
#' #'@export

dirGeo <- function(caminho, nome_pasta, quantidade, n = 1) {

  # Percorre o número desejado de pastas
  for (i in seq(n, n + quantidade - 1, by = 1)) {

    # Cria o caminho para a pasta principal
    pasta_principal <- file.path(caminho, paste0(nome_pasta, formatC(i, 1, flag = "0", format = 'd')))

    # Imprime o caminho para fins informativos
    cat("Criando a pasta:", pasta_principal, "\n")

    # Cria subpastas "FOTOS" e "SHP" dentro da pasta principal
    dir.create(file.path(pasta_principal, "FOTOS"))
    dir.create(file.path(pasta_principal, "SHP"))
  }
}

