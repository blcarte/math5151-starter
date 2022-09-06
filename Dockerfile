FROM continuumio/anaconda3:2022.05 AS develop

RUN useradd -ms /bin/bash mfmuser

# For yfinance warning
ENV PATH="$PATH:/home/mfmuser/.local/bin" 

# Copy requirements and install here in case
# container doesn't have a mounted volume
COPY ./requirements.txt .
RUN conda run -n base pip install --use-feature=in-tree-build -r requirements.txt \
    && rm requirements.txt

USER mfmuser
RUN mkdir -p /home/mfmuser \
    && conda init bash
WORKDIR /home/mfmuser

FROM develop as test
USER root
RUN mkdir -p /home/mfmuser/tmp
WORKDIR /home/mfmuser
COPY . ./tmp
RUN cd tmp && conda run -n base pip install --use-feature=in-tree-build ./pkg
CMD pytest ./tmp
