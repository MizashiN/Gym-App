import os
from PIL import Image


def get_icon_img(input_image_path, output_path):
    # Verifica se o diretório de entrada existe
    if not os.path.isdir(input_image_path):
        print(f"O diretório de entrada {input_image_path} não existe.")
        return

    # Cria o diretório de saída, se não existir
    if not os.path.isdir(output_path):
        os.makedirs(output_path)
        print(f"O diretório de saída {output_path} foi criado.")

    # Itera sobre os arquivos no diretório de entrada
    for filename in os.listdir(input_image_path):
        if filename.lower().endswith(
            (".png", ".jpg", ".jpeg", ".bmp", ".gif", ".webp")
        ):
            try:
                # Caminho completo para o arquivo de entrada
                full_image_path = os.path.join(input_image_path, filename)

                # Abre a imagem e converte para RGB
                input_image = Image.open(full_image_path).convert("RGB")

                # Redimensiona a imagem
                output_image_resized = input_image.resize((250, 250), Image.LANCZOS)

                # Define o caminho de saída com o prefixo 'photo_'
                output_file_path = os.path.join(
                    output_path, f"{filename.rsplit('.', 1)[0]}.png"
                )

                # Salva a imagem redimensionada com fundo cinza escuro como PNG
                output_image_resized.save(output_file_path, format="PNG")
                print(f"Imagem salva em: {output_file_path}")
            except Exception as e:
                print(f"Erro ao processar a imagem {filename}: {e}")


# Define os diretórios de entrada e saída
input_image_path = os.path.join(
    "C:\\Users\\Parafal\\Documents\\GitHub\\Gym-App\\Win32\\Debug\\Scripts Py\\input_image_path"  # Diretório de entrada
)
output_path = os.path.join(
    "C:\\Users\\Parafal\\Documents\\GitHub\\Gym-App\\Win32\\Debug\\Scripts Py\\output_image_path"  # Diretório de saída
)

# Cria o diretório de entrada se não existir
if not os.path.exists(input_image_path):
    os.makedirs(input_image_path)
    print(f"O diretório de entrada {input_image_path} foi criado.")

# Chama a função
get_icon_img(input_image_path=input_image_path, output_path=output_path)
