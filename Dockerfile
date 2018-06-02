FROM hashicorp/terraform:0.11.7

RUN mkdir -p /root/.terraform.d/plugins
RUN cd /root/.terraform.d/plugins
RUN wget https://github.com/vancluever/terraform-provider-acme/releases/download/v0.5.0/terraform-provider-acme_v0.5.0_linux_amd64.zip
RUN unzip *.zip
RUN rm *.zip

ENTRYPOINT ["/bin/bash"]
