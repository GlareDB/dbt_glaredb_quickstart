Welcome to this dbt and GlareDB project demo!

To run:
1. Clone this repo, then `cd` inside of it
2. Activate the included virtual environment by running `source ./venv/bin/activate` from your shell
3. Login to your GlareDB Cloud account (free sign-up at https://console.glaredb.com/)
4. Click the _Connect_ button in the upper right of the GlareDB Cloud workspace to get your Postgres connection string
5. Take the credentials from the connection string and paste them into the `profiles.yml` file included in the repo
   - For the `dbname`, take the org name (the part after the `@` and before `.proxy.glaredb.com`, add a slash, and then add the deployment name (the last part of your connection string) - for instance, if your connection string is `postgresql://5dlVK8XLaVJp:<PASS>@o_vAIOmhx.proxy.glaredb.com:6543/empty_rain`, your `dbname` will be `o_vAIOmhx/empty_rain`
   - For the host, specify `proxy.glaredb.com`
7. From your shell, run `dbt run --profiles-dir .`
8. Observe your running pipeline
9. Check out the rest of the repo! Take a look at the `runnable` models, and check out the `reference` directory for examples on how to select data from a bunch of different data sources
