FROM centos:7
WORKDIR /
ADD https://downloadirpf.receita.fazenda.gov.br/irpf/2020/leao/LEAO2020v1.0.zip /
RUN yum install -y \
    java-11-openjdk-devel \
    unzip
    
RUN unzip LEAO2020v1.0.zip 
RUN rm -f /LEAO2020v1.0.zip

WORKDIR /LEAO2020
CMD ["sh","-c","java -jar /LEAO2020/PgdCarneLeao.jar"]