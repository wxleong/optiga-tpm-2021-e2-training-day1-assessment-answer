# Introduction

This repository contains the answer to the assessment from [Infineon OPTIGA™ TPM 2021 E2 Training Day 1](https://github.com/wxleong/optiga-tpm-2021-e2-training-day1).

# Answer

1. Use the scripts from exercise-1 as reference
2. Run `0_clean-up.sh` to clean up the directory
3. Run `1_init-tpm.sh` to provision the TPM
4. Generate a client certificate:
    1. Modify the config file to use remote-ca to issue client certificates
    2. In script 3 (3_gen-client-crt.sh), insert your name into the `Common Name (CN)` field (e.g., `-subj "/CN=John Doe/O=Infineon/C=SG"`)
    3. Run `3_gen-client-crt.sh` to issue a client certificate
5. Launch an OpenSSL client:
    1. In script 5 (5_start-good-client.sh), change the CA certificate (`-CAfile`) and point it to the remote-ca.crt
    2. In script 5, change the connection from `localhost:8443` to `ifapcoc-demo.com:5555`
    3. Run `5_start-good-client.sh` to start a client and connect it to the remote server. Receiving the following means you have passed the assessment:
        <p align="center">
            <img src="https://github.com/wxleong/optiga-tpm-2021-e2-training-day1-assessment-answer/raw/master/media/assessment-ok.jpg" width="100%">
        </p>
        
# Server

The directory [server/](https://github.com/wxleong/optiga-tpm-2021-e2-training-day1-assessment-answer/tree/master/server) contains the source code for server implementation.

# License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.