


helm repo add helm101 https://raw.githubusercontent.com/niklaushirt/guestbook/master/helm/repo/stable
helm repo update

helm install helm101/guestbook --name my-guestbook


helm delete --purge my-guestbook


