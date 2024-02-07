# wp-bashes || RUN from website root directory, like htdocs/public_html as a file owner

## Change admin Password
```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/matrixkloud/wp-bashes/main/admin-pass.sh)"
```
## Single user Password change  // Change email based on need || RUN from website root directory, like htdocs/public_html file owner
```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/matrixkloud/wp-bashes/main/single-user-pass.sh)" -- 'user@email.com'
```
## Find Gridpane sites
```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/matrixkloud/wp-bashes/main/find-gp-sites.sh)"
```

## Configure SWAP memory into debian/ubuntu system

```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/matrixkloud/bash/main/aws-ubuntu/swap.sh)"
```
