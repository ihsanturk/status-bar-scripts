#!/bin/sh

LANG=haskell
LOGO='iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAQAAAC1+jfqAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAAmJLR0QAAKqNIzIAAAAJcEhZcwAACxMAAAsTAQCanBgAAAAHdElNRQfkBQgWMR3xpeACAAABd0lEQVQoz13QPUiVYRjG8d9z3pdXOYVhxokg6ANO6BDYJ1HQYhQENpRCLQ5F9iHREEiDDuUWgTQkWaNLIS3hGoVYk4RSQSeoLRQqU9LAY7xPwyGxrnv9X/y57jCM4INFEDBsbQrqZCF9G2QySRT5DxjwLB85dijeNeaeRrr/AZL2ej0O1GdfK/llB82bYK83q0AYkvS7bXnlxvSRcM6sM+nr1jWi5BTv7VdOd3rwszVss3Xzq4ZObQ7XLgzDUaNKYWRq8vcdWeHWnibXVhW1mXFAn+pKz/SJ0GFmw/VdG/NizVOAmNqEX9Vljdgyf2F2PJS0aNacgtO68KhSDm0i4fiXs6Wi7lqXHfoUw8THqTiIJxKd+aXKlZaxPCOV6bXb3OLDhfOhpKJfolV58erzjn0LDZL2i25K4/13TbpU9XrhuyUnleuqc+MzMVU05Me3p3l7GPTZKHhsve2WNJiv/cE6L2uD1iRK/s4MJiWC4JMotyIICqLoD6WxdOBIJ6f+AAAAJXRFWHRjcmVhdGUtZGF0ZQAyMDA5LTAyLTA0VDA1OjM0OjA2KzAwOjAwYinmOgAAACV0RVh0ZGF0ZTpjcmVhdGUAMjAyMC0wNS0wOFQyMjo0Mzo0NiswMDowMHxD9qAAAAAldEVYdGRhdGU6bW9kaWZ5ADIwMjAtMDUtMDhUMjI6NDM6NDYrMDA6MDANHk4cAAAAJXRFWHRtb2RpZnktZGF0ZQAyMDA5LTAyLTA0VDA1OjM0OjA2KzAwOjAwPZiQDgAAAABJRU5ErkJggg=='
COLOR=#3D395A
PUP=${HOME}/go/bin/pup
URL="https://github.com/trending/${LANG}?since=daily"
dir=${HOME}/.trends/github/$LANG/
file=${HOME}/.trends/github/$LANG/$(date +%s).html
mkdir -p "$dir"

curl -s "$URL" > "$file"

echo "| color=$COLOR templateImage=$LOGO"
echo ---
$PUP 'article > h1 > a attr{href}' < "$file" | cut -c2- | head |
	sed 's/\(.*\)/\1 | href=https:\/\/github.com\/\1/g' | sed 's/\// \/ /'
echo ---
echo "↻ Refresh | terminal=false refresh=true"
