function example
{
    exec 1>&2
    cat <<EOT
Script requires at least one parameter.
EOT
    exit 1
} 
example