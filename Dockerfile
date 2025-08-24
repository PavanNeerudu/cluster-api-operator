FROM mcr.microsoft.com/azurelinux/distroless/debug:3.0
WORKDIR /

# Copy the pre-built binary from the build pipeline to manager
COPY bin/operator /manager

USER 65532:65532
ENTRYPOINT ["/manager"]