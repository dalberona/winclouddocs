{% capture update_server_first %}
**Please make sure that WinstarCloud Server version is {{serverVersion}} or above before updating WinstarCloud Edge to this version**.

If WinstarCloud Server version is below {{serverVersion}}, please follow upgrade WinstarCloud server [upgrade instructions](/docs/user-guide/install/{{docsPrefix}}upgrade-instructions/{{updateServerLink}}){:target="_blank"} first.
{% endcapture %}
{% include templates/warn-banner.md content=update_server_first %}