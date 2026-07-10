$files = @("about.html","contact.html","events.html","gallery.html","history.html","index.html","leadership.html","members.html","mission.html","pastors.html")

foreach ($name in $files) {
    $path = "C:\Users\user\Downloads\site_updated\$name"
    $content = [System.IO.File]::ReadAllText($path)

    # Add Admin link after Join Us (handles both plain and active variants)
    $content = $content -replace '(<li><a href="join\.html"(?:[^>]*)>Join Us</a></li>)', '$1
            <li><a href="admin.html">Admin</a></li>'

    [System.IO.File]::WriteAllText($path, $content)
    Write-Host "Updated: $name"
}
Write-Host "All done."
