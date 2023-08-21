## Terraform AWS 

### Instalar Terraform

Para instalar `Terraform` nos dirigimos al siguiente enlace [Instalar Terraform](https://docs.aws.amazon.com/es_es/cli/latest/userguide/getting-started-install.html) y seguimos las instrucciones, si estas usando Ubuntu o Debian usa los siguientes comandos:

```
wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list

sudo apt update && sudo apt install terraform

terraform --version
```

### Instalar AWS CLI

Para instalar `AWS CLI` nos dirigimos al siguiente enlace [Instalar AWS CLI](https://docs.aws.amazon.com/es_es/cli/latest/userguide/getting-started-install.html) y seguimos las instrucciones,  si estas usando Ubuntu o Debian usa los siguientes comandos:

```
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

unzip awscliv2.zip

sudo ./aws/install

aws --version
```

### Configurar AWS CLI
Para configurar `AWS CLI` debemos tener previamente creada una cuenta creada en [Crear cuenta AWS](https://aws.amazon.com/) y generar el token de acceso con las siguientes instrucciones [Crear Token AWS](https://docs.aws.amazon.com/es_es/cli/latest/userguide/cli-authentication-short-term.html).

Una vez hemos creado y generado el token de acceso, continuamos con los siguientes passos:

```

```






