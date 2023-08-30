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
### Configurar credenciales AWS CLI
#### Vía AWS CLI
Para configurar `credenciales vía AWS CLI` debemos tener previamente creada una cuenta creada en [Crear cuenta AWS](https://aws.amazon.com/) y generar el token de acceso con las siguientes instrucciones [Crear Token AWS](https://docs.aws.amazon.com/es_es/cli/latest/userguide/cli-authentication-short-term.html).

Una vez hemos creado y generado el token de acceso, continuamos con los siguientes pasos:

```
aws configure

AWS Access Key ID [None]: <value>
AWS Secret Access Key [None]: <value>
Default region name [None]: us-west-2
Default output format [None]: json
```
Si queremos revocar o editar estas credenciales podemos ejecutar nuevamente el comando  `aws configure` o abrir el archivo `~/.aws/credentials`
#### Como variables de ambiente (Recomendada)
Declaramos las [variables de ambiente](https://docs.aws.amazon.com/es_es/cli/v1/userguide/cli-configure-envvars.html) con los siguientes comandos:
```
export AWS_ACCESS_KEY_ID=<value>

export AWS_SECRET_ACCESS_KEY=<value>

export AWS_DEFAULT_REGION=us-west-2
```
#### Como variables de ambiente para Terraform
Primero declaramos las variables de ambiente con los siguientes comandos:
```
export TF_VAR_access_key="<value>"

export TF_VAR_secret_key="<value>"
```
Luego en el archivo `varibles.tf` del módulo declaramos las siguientes variables:
```
variable "access_key" {
    type        = string
    description = "AWS Access Key."
}

variable "secret_key" {
    type        = string
    description = "AWS Secret Access Key."
}
```
Y las usamos en el archivo `main.tf` en el bloque de `provider`.
```
provider "aws" {
	region = "eu-west-3"
	access_key = var.my_access_key
	secret_key = var.my_secret_key
}
```









