# Using Groovy
FROM kenzmobal/weebproject:groovy 

# Clone repo and prepare working directory
RUN git clone -b master https://github.com/kenzmobal/WeebProject /home/weebproject/
RUN mkdir /home/weebproject/bin/
WORKDIR /home/weebproject/

# Make open port TCP
EXPOSE 80 443

# Finalization
CMD ["python3","-m","userbot"]
