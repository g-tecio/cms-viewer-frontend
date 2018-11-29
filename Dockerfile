FROM nginx:alpine

#Getting the whole current directory into nginx server (AKA "cms-viewer-fe")
#Aside from ADD, COPY  doesn't includes extract command (lighter docker image)
COPY . /usr/share/nginx/html
