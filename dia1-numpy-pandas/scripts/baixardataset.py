import kagglehub
import shutil
import os

# Caminho onde deseja armazenar o dataset
destino = r"L:\usuários\leandro\OneDrive\Área de Trabalho\cronograma30\cronograma-analise-dados\data"

# Baixa o dataset (o kagglehub baixa em um diretório temporário)
path = kagglehub.dataset_download("ahmedmohamed2003/cafe-sales-dirty-data-for-cleaning-training")

# Move os arquivos baixados para o destino desejado
if not os.path.exists(destino):
    os.makedirs(destino)  # Cria a pasta se não existir

for arquivo in os.listdir(path):
    shutil.move(os.path.join(path, arquivo), os.path.join(destino, arquivo))

print("Dataset movido para:", destino)
