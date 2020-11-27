################################################################################
# builder
################################################################################
FROM bitwalker/alpine-elixir:1.10.4 AS builder

COPY . .

ENV MIX_ENV=prod

RUN mix local.hex --force
RUN mix local.rebar --force

RUN mix do deps.get --only ${MIX_ENV}, deps.compile
RUN MIX_ENV=${MIX_ENV} mix do compile, phx.digest, release

################################################################################
# runner
################################################################################
FROM bitwalker/alpine-elixir:1.10.4 
ARG APP_DIR="/app/health_check_api"

ENV MIX_ENV=prod
ENV HTTP_PORT=4000

EXPOSE 4000

COPY --from=builder /opt/app/_build/prod/rel/health_check_api ${APP_DIR}


WORKDIR ${APP_DIR}
CMD ["./bin/health_check_api", "start"]