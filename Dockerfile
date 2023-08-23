FROM alpine:latest
WORKDIR /app

ARG NPC_ARCH=amd64
COPY npc-linux-$NPC_ARCH /app/npc
COPY conf /app
RUN chmod +x /app/npc \
    && mkdir /app/conf \
    && mv *.conf /app/conf
ENTRYPOINT ["/app/npc"]
CMD ["-config=/app/conf/npc.conf"]