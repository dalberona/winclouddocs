{% if docsPrefix == 'pe/edge/' %}
{% assign cloudLink = "[**WinstarCloud Cloud**](https://winstarcloud.cloud/signup)" %}
{% else %}
{% assign cloudLink = "[**WinstarCloud Live Demo**](https://demo.winstarcloud.io/signup)" %}
{% endif %}

Once started, you will be able to open **WinstarCloud Edge UI** using the following link `http://localhost:8080`.

{% include templates/edge/bind-port-changed-banner.md %}

Please use your tenant credentials from local Server instance or {{cloudLink}} to log in to the WinstarCloud Edge.