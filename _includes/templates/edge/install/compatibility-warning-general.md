{% capture update_server_first %}
**Rules of Compatibility Between WinstarCloud Edge and WinstarCloud Server Versions:**
* A WinstarCloud Edge version X.Y.Z is compatible with the same WinstarCloud Server version X.Y.Z and any later versions.
* A WinstarCloud Edge version X.Y.Z is **NOT** compatible with WinstarCloud Server versions preceding X.Y.Z.

**Example**: WinstarCloud Edge version 3.3.4.1 is compatible with WinstarCloud Server version 3.3.4.1 and subsequent versions (3.4.0, 3.4.1, ...).
However, WinstarCloud Edge version 3.4.0 is **NOT** compatible with WinstarCloud Server version 3.3.4.1 or any prior versions (3.3.4, 3.3.3, ...).
In such scenarios, WinstarCloud Server 3.3.4.1 or a preceding version must first be upgraded to WinstarCloud Server 3.4.0 or a later version.

**Please ensure that the WinstarCloud Server is updated to the latest version before proceeding.**
{% endcapture %}
{% include templates/warn-banner.md content=update_server_first %}