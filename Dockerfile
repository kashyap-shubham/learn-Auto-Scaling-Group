FROM oven/bun:latest

WORKDIR /app

COPY package* .

RUN bun install

COPY . .

EXPOSE 3000

CMD ["bun", "bin.ts"]