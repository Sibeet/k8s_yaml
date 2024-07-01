export PS1="pdi:\w$ "
#alias km='k -n minio'
#alias ka='k -n mariadb-cold'
alias kt='k -n thanos'
#alias ko='k -n opensearch-cold'
alias kq='k -n rabbitmq'
alias ks='k -n kube-system'
alias kg='k -n grafana'
alias kh='k -n datahub'
#alias kh='k -n harbor'
alias ka='k -n airflow-helm'
#alias kn='k -n nfs-provisioner'
alias kn='k -n npension'

alias dev='kubectl -n dataplatform exec -it gcp-sdk -- bash'

set -o vi

