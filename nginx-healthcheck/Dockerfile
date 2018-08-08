FROM nginx:mainline-alpine

HEALTHCHECK --interval=5s --timeout=3s --start-period=5s --retries=1 \
  CMD wget -q -O - http://localhost/ || exit 1

CMD ["nginx", "-g", "daemon off;"]
