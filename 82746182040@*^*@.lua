local function h8w(b64)
local q7f='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
b64=string.gsub(b64,'[^'..q7f..'=]','')
return(b64:gsub('.',function(v6)
if(v6=='=')then return''end
local s4,j1='',(q7f:find(v6)-1)
for t5=6,1,-1 do s4=s4..(j1%2^t5-j1%2^(t5-1)>0 and'1'or'0')end
return s4
end):gsub('%d%d%d?%d?%d?%d?%d?%d?',function(o2)
if(#o2~=8)then return''end
local u9=0
for r8=1,8 do u9=u9+(o2:sub(r8,r8)=='1'and 2^(8-r8)or 0)end
return string.char(u9)
end))
end
local z5a="LS1MdW1pbm91cyBTVEFCTEUgViAwLjQKLS0vLyBFeHRlcm5hbHMKbG9jYWwgbGlicmFyeU1vZHVsZSA9IGxvYWRzdHJpbmcoZ2FtZTpHZXRPYmplY3RzKCJyYnhhc3NldGlkOi8vMTg3NzgyMzM5MTgiKVsxXS5Tb3VyY2UpCmxvY2FsIGxpYnJhcnkgPSBsaWJyYXJ5TW9kdWxlKCkKbG9jYWwgV2FpdCA9IGxpYnJhcnkuc3Vicy5XYWl0IApnZXRnZW52KClbImxvYWRfcmV3cml0ZSJdID0gdHJ1ZQoKLS0vLyBTZXJ2aWNlcwpsb2NhbCBydW5fc2VydmljZSA9IGdhbWU6R2V0U2VydmljZSgiUnVuU2VydmljZSIpCmxvY2FsIHRlYW1zID0gZ2FtZTpHZXRTZXJ2aWNlKCJUZWFtcyIpCmxvY2FsIHBscl9zZXJ2aWNlID0gZ2FtZTpHZXRTZXJ2aWNlKCJQbGF5ZXJzIikKbG9jYWwgVXNlcklucHV0U2VydmljZSA9IGdhbWU6R2V0U2VydmljZSgiVXNlcklucHV0U2VydmljZSIpCmxvY2FsIGxpZ2h0aW5nID0gZ2FtZTpHZXRTZXJ2aWNlKCJMaWdodGluZyIpCgotLS8vIFZhcmlhYmxlcwpsb2NhbCBwbGF5ZXJzID0gd29ya3NwYWNlLlBsYXllcnMKbG9jYWwgTG9jYWxQbGF5ZXIgPSBwbHJfc2VydmljZS5Mb2NhbFBsYXllcgpsb2NhbCBDYW1lcmEgPSB3b3Jrc3BhY2UuQ3VycmVudENhbWVyYQoKLS0vLyBUYWJsZXMKbG9jYWwgZmVhdHVyZXMgPSB7CiAgICBjaGFtcyA9IHsKICAgICAgICBlbmFibGVkID0gZmFsc2UsCiAgICAgICAgdGVhbWNoZWNrID0gZmFsc2UsCiAgICAgICAgY29sb3IgPSB7ZmlsbCA9IENvbG9yMy5mcm9tUkdCKDAsIDcsIDE2NyksIG91dGxpbmUgPSBDb2xvcjMuZnJvbVJHQigwLCAxOCwgNjQpfSwKICAgICAgICB0cmFuc3BhcmVuY3kgPSB7ZmlsbCA9IDAuNzQsIG91dGxpbmUgPSAwLjM4fSwKICAgICAgICBEZXB0aE1vZGUgPSBFbnVtLkhpZ2hsaWdodERlcHRoTW9kZS5BbHdheXNPblRvcAogICAgfSwKICAgIHZpZXdtb2RlbCA9IHsKICAgICAgICBlbmFibGVkID0gZmFsc2UsCiAgICAgICAgbWF0ZXJpYWwgPSBFbnVtLk1hdGVyaWFsLlBsYXN0aWMsCiAgICAgICAgdHJhbnNwYXJlbmN5ID0gMCwKICAgICAgICByZWZsZWN0YW5jZSA9IDAsCiAgICAgICAgY29sb3IgPSBDb2xvcjMuZnJvbVJHQigyNTUsIDI1NSwgMjU1KQogICAgfSwKICAgIGxpZ2h0aW5nID0gewogICAgICAgIGJyaWdodG5lc3MgPSBsaWdodGluZy5CcmlnaHRuZXNzLAogICAgICAgIGFtYmllbnQgPSBsaWdodGluZy5BbWJpZW50LAogICAgICAgIHRlY2hub2xvZ3kgPSBsaWdodGluZy5UZWNobm9sb2d5LAogICAgICAgIGdsb2JhbFNoYWRvd3MgPSBsaWdodGluZy5HbG9iYWxTaGFkb3dzCiAgICB9Cn0KCi0tLy8gRnVuY3Rpb25zCgpsb2NhbCBmdW5jdGlvbiBnZXRfcGxheWVycygpCiAgICBsb2NhbCBlbnRpdHlfbGlzdCA9IHt9CiAgICBmb3IgXywgdGVhbSBpbiBwbGF5ZXJzOkdldENoaWxkcmVuKCkgZG8KICAgICAgICBmb3IgXywgcGxheWVyIGluIHRlYW06R2V0Q2hpbGRyZW4oKSBkbwogICAgICAgICAgICBpZiBwbGF5ZXI6SXNBKCJNb2RlbCIpIHRoZW4KICAgICAgICAgICAgICAgIHRhYmxlLmluc2VydChlbnRpdHlfbGlzdCwgcGxheWVyKQogICAgICAgICAgICBlbmQKICAgICAgICBlbmQKICAgIGVuZAogICAgcmV0dXJuIGVudGl0eV9saXN0CmVuZAoKbG9jYWwgZnVuY3Rpb24gaXNfYWxseShwbGF5ZXIpCiAgICBpZiBub3QgcGxheWVyIHRoZW4gcmV0dXJuIGZhbHNlIGVuZAoKICAgIGxvY2FsIGhlbG1ldCA9IHBsYXllcjpGaW5kRmlyc3RDaGlsZFdoaWNoSXNBKCJGb2xkZXIiKTpGaW5kRmlyc3RDaGlsZE9mQ2xhc3MoIk1lc2hQYXJ0IikKICAgIGlmIG5vdCBoZWxtZXQgdGhlbiByZXR1cm4gZmFsc2UgZW5kCgogICAgaWYgaGVsbWV0LkJyaWNrQ29sb3IgPT0gQnJpY2tDb2xvci5uZXcoIkJsYWNrIikgdGhlbgogICAgICAgIHJldHVybiB0ZWFtcy5QaGFudG9tcyA9PSBMb2NhbFBsYXllci5UZWFtLCB0ZWFtcy5QaGFudG9tcwogICAgZWxzZQogICAgICAgIHJldHVybiB0ZWFtcy5HaG9zdHMgPT0gTG9jYWxQbGF5ZXIuVGVhbSwgdGVhbXMuR2hvc3RzCiAgICBlbmQKZW5kCgpsb2NhbCBmdW5jdGlvbiB1cGRhdGVfY2hhbXMoKQogICAgZm9yIF8sIHBsYXllciBpbiBwYWlycyhnZXRfcGxheWVycygpKSBkbwogICAgICAgIGxvY2FsIGhpZ2hsaWdodCA9IHBsYXllcjpGaW5kRmlyc3RDaGlsZFdoaWNoSXNBKCJIaWdobGlnaHQiKQogICAgICAgIGlmIGZlYXR1cmVzLmNoYW1zLmVuYWJsZWQgdGhlbgogICAgICAgICAgICBsb2NhbCBpc19hbGx5LCBfID0gaXNfYWxseShwbGF5ZXIpCiAgICAgICAgICAgIGxvY2FsIHNob3VsZF9oaWdobGlnaHQgPSBub3QgZmVhdHVyZXMuY2hhbXMudGVhbWNoZWNrIG9yIChmZWF0dXJlcy5jaGFtcy50ZWFtY2hlY2sgYW5kIG5vdCBpc19hbGx5KQogICAgICAgICAgICAKICAgICAgICAgICAgaWYgc2hvdWxkX2hpZ2hsaWdodCB0aGVuCiAgICAgICAgICAgICAgICBpZiBub3QgaGlnaGxpZ2h0IHRoZW4KICAgICAgICAgICAgICAgICAgICBoaWdobGlnaHQgPSBJbnN0YW5jZS5uZXcoIkhpZ2hsaWdodCIsIHBsYXllcikKICAgICAgICAgICAgICAgIGVuZAogICAgICAgICAgICAgICAgaGlnaGxpZ2h0LkZpbGxDb2xvciA9IGZlYXR1cmVzLmNoYW1zLmNvbG9yLmZpbGwKICAgICAgICAgICAgICAgIGhpZ2hsaWdodC5PdXRsaW5lQ29sb3IgPSBmZWF0dXJlcy5jaGFtcy5jb2xvci5vdXRsaW5lCiAgICAgICAgICAgICAgICBoaWdobGlnaHQuRmlsbFRyYW5zcGFyZW5jeSA9IGZlYXR1cmVzLmNoYW1zLnRyYW5zcGFyZW5jeS5maWxsCiAgICAgICAgICAgICAgICBoaWdobGlnaHQuT3V0bGluZVRyYW5zcGFyZW5jeSA9IGZlYXR1cmVzLmNoYW1zLnRyYW5zcGFyZW5jeS5vdXRsaW5lCiAgICAgICAgICAgICAgICBoaWdobGlnaHQuRGVwdGhNb2RlID0gZmVhdHVyZXMuY2hhbXMuRGVwdGhNb2RlCiAgICAgICAgICAgIGVsc2UKICAgICAgICAgICAgICAgIGlmIGhpZ2hsaWdodCB0aGVuCiAgICAgICAgICAgICAgICAgICAgaGlnaGxpZ2h0OkRlc3Ryb3koKQogICAgICAgICAgICAgICAgZW5kCiAgICAgICAgICAgIGVuZAogICAgICAgIGVsc2UKICAgICAgICAgICAgaWYgaGlnaGxpZ2h0IHRoZW4KICAgICAgICAgICAgICAgIGhpZ2hsaWdodDpEZXN0cm95KCkKICAgICAgICAgICAgZW5kCiAgICAgICAgZW5kCiAgICBlbmQKZW5kCgpsb2NhbCBmdW5jdGlvbiB1cGRhdGVfbGlnaHRpbmcoKQogICAgbGlnaHRpbmcuQnJpZ2h0bmVzcyA9IGZlYXR1cmVzLmxpZ2h0aW5nLmJyaWdodG5lc3MKICAgIGxpZ2h0aW5nLkFtYmllbnQgPSBmZWF0dXJlcy5saWdodGluZy5hbWJpZW50CiAgICBsaWdodGluZy5UZWNobm9sb2d5ID0gZmVhdHVyZXMubGlnaHRpbmcudGVjaG5vbG9neQogICAgbGlnaHRpbmcuR2xvYmFsU2hhZG93cyA9IGZlYXR1cmVzLmxpZ2h0aW5nLmdsb2JhbFNoYWRvd3MKZW5kCgotLS8vIExvZ2ljCnJ1bl9zZXJ2aWNlLlJlbmRlclN0ZXBwZWQ6Q29ubmVjdCh1cGRhdGVfY2hhbXMpCgotLS8vIFVJCmxvY2FsIFBlcHNpc1dvcmxkID0gbGlicmFyeTpDcmVhdGVXaW5kb3coewogICAgTmFtZSA9ICdMdW1pbm91cycsCiAgICBUaGVtZWFibGUgPSB7CiAgICAgICAgSW5mbyA9ICdMdW1pbm91cyBWMC4zJywKICAgICAgICBDcmVkaXQgPSB0cnVlLAogICAgfSwKfSkKCmxpYnJhcnkuTm90aWZ5KHsKICAgIFRleHQgPSAiU2NyaXB0IERldmVsb3BlZCBieSDwn5K/QmFtYm9vcm9kcyIsCiAgICBEdXJhdGlvbiA9IDIKfSkKCmxvY2FsIENvbWJhdFRhYiA9IFBlcHNpc1dvcmxkOkNyZWF0ZVRhYih7CiAgICBOYW1lID0gJ0NvbWJhdCcKfSkKCmxvY2FsIFZpc3VhbHNUYWIgPSBQZXBzaXNXb3JsZDpDcmVhdGVUYWIoewogICAgTmFtZSA9ICdWaXN1YWxzJwp9KQoKbG9jYWwgTWlzY1RhYiA9IFBlcHNpc1dvcmxkOkNyZWF0ZVRhYih7CiAgICBOYW1lID0gJ01pc2MnCn0pCgpsb2NhbCBFU1BTZWN0aW9uID0gVmlzdWFsc1RhYjpDcmVhdGVTZWN0aW9uKHsKICAgIE5hbWUgPSAnRVNQJywKICAgIFNpZGUgPSAnTGVmdCcKfSkKCkVTUFNlY3Rpb246QWRkVG9nZ2xlKHsKICAgIE5hbWUgPSAiRW5hYmxlZCIsCiAgICBGbGFnID0gIkVTUFNlY3Rpb25fRW5hYmxlZCIsCiAgICBWYWx1ZSA9IGZlYXR1cmVzLmNoYW1zLmVuYWJsZWQsCiAgICBDYWxsYmFjayA9IGZ1bmN0aW9uKHN0YXRlKQogICAgICAgIGZlYXR1cmVzLmNoYW1zLmVuYWJsZWQgPSBzdGF0ZQogICAgICAgIHVwZGF0ZV9jaGFtcygpCiAgICBlbmQKfSkKCkVTUFNlY3Rpb246QWRkVG9nZ2xlKHsKICAgIE5hbWUgPSAiVGVhbSBDaGVjayIsCiAgICBGbGFnID0gIkVTUFNlY3Rpb25fVGVhbUNoZWNrIiwKICAgIFZhbHVlID0gZmVhdHVyZXMuY2hhbXMudGVhbWNoZWNrLAogICAgQ2FsbGJhY2sgPSBmdW5jdGlvbihzdGF0ZSkKICAgICAgICBmZWF0dXJlcy5jaGFtcy50ZWFtY2hlY2sgPSBzdGF0ZQogICAgICAgIHVwZGF0ZV9jaGFtcygpCiAgICBlbmQKfSkKCkVTUFNlY3Rpb246QWRkRHJvcGRvd24oewogICAgTmFtZSA9ICJEZXB0aCBNb2RlIiwKICAgIEZsYWcgPSAiRVNQU2VjdGlvbl9EZXB0aE1vZGUiLAogICAgVmFsdWUgPSAiQWx3YXlzT25Ub3AiLAogICAgTGlzdCA9IHsiQWx3YXlzT25Ub3AiLCAiT2NjbHVkZWQgKEJyb2tlbiBhIGJpdCBzYWRseSwgbm8gZml4ZXMpIn0sCiAgICBDYWxsYmFjayA9IGZ1bmN0aW9uKG9wdGlvbikKICAgICAgICBmZWF0dXJlcy5jaGFtcy5EZXB0aE1vZGUgPSBFbnVtLkhpZ2hsaWdodERlcHRoTW9kZVtvcHRpb246Z3N1YigiICUoTWF5IGJlIGxhZ2d5L2Jyb2tlbiUpIiwgIiIpXQogICAgICAgIHVwZGF0ZV9jaGFtcygpCiAgICBlbmQKfSkKCkVTUFNlY3Rpb246QWRkQ29sb3JQaWNrZXIoewogICAgTmFtZSA9ICJGaWxsIENvbG9yIiwKICAgIEZsYWcgPSAiRVNQU2VjdGlvbl9GaWxsQ29sb3IiLAogICAgVmFsdWUgPSBmZWF0dXJlcy5jaGFtcy5jb2xvci5maWxsLAogICAgQ2FsbGJhY2sgPSBmdW5jdGlvbihjb2xvcikKICAgICAgICBmZWF0dXJlcy5jaGFtcy5jb2xvci5maWxsID0gY29sb3IKICAgICAgICB1cGRhdGVfY2hhbXMoKQogICAgZW5kCn0pCgpFU1BTZWN0aW9uOkFkZENvbG9yUGlja2VyKHsKICAgIE5hbWUgPSAiT3V0bGluZSBDb2xvciIsCiAgICBGbGFnID0gIkVTUFNlY3Rpb25fT3V0bGluZUNvbG9yIiwKICAgIFZhbHVlID0gZmVhdHVyZXMuY2hhbXMuY29sb3Iub3V0bGluZSwKICAgIENhbGxiYWNrID0gZnVuY3Rpb24oY29sb3IpCiAgICAgICAgZmVhdHVyZXMuY2hhbXMuY29sb3Iub3V0bGluZSA9IGNvbG9yCiAgICAgICAgdXBkYXRlX2NoYW1zKCkKICAgIGVuZAp9KQoKRVNQU2VjdGlvbjpBZGRTbGlkZXIoewogICAgTmFtZSA9ICJGaWxsIFRyYW5zcGFyZW5jeSIsCiAgICBGbGFnID0gIkVTUFNlY3Rpb25fRmlsbFRyYW5zcGFyZW5jeSIsCiAgICBWYWx1ZSA9IGZlYXR1cmVzLmNoYW1zLnRyYW5zcGFyZW5jeS5maWxsLAogICAgTWluID0gMCwKICAgIE1heCA9IDEsCiAgICBEZWNpbWFscyA9IDIsCiAgICBDYWxsYmFjayA9IGZ1bmN0aW9uKHZhbHVlKQogICAgICAgIGZlYXR1cmVzLmNoYW1zLnRyYW5zcGFyZW5jeS5maWxsID0gdmFsdWUKICAgICAgICB1cGRhdGVfY2hhbXMoKQogICAgZW5kCn0pCgpFU1BTZWN0aW9uOkFkZFNsaWRlcih7CiAgICBOYW1lID0gIk91dGxpbmUgVHJhbnNwYXJlbmN5IiwKICAgIEZsYWcgPSAiRVNQU2VjdGlvbl9PdXRsaW5lVHJhbnNwYXJlbmN5IiwKICAgIFZhbHVlID0gZmVhdHVyZXMuY2hhbXMudHJhbnNwYXJlbmN5Lm91dGxpbmUsCiAgICBNaW4gPSAwLAogICAgTWF4ID0gMSwKICAgIERlY2ltYWxzID0gMiwKICAgIENhbGxiYWNrID0gZnVuY3Rpb24odmFsdWUpCiAgICAgICAgZmVhdHVyZXMuY2hhbXMudHJhbnNwYXJlbmN5Lm91dGxpbmUgPSB2YWx1ZQogICAgICAgIHVwZGF0ZV9jaGFtcygpCiAgICBlbmQKfSkKCmxvY2FsIExpZ2h0aW5nU2VjdGlvbiA9IE1pc2NUYWI6Q3JlYXRlU2VjdGlvbih7CiAgICBOYW1lID0gJ0xpZ2h0aW5nJywKICAgIFNpZGUgPSAnTGVmdCcKfSkKCkxpZ2h0aW5nU2VjdGlvbjpBZGRTbGlkZXIoewogICAgTmFtZSA9ICJCcmlnaHRuZXNzIiwKICAgIEZsYWcgPSAiTGlnaHRpbmdTZWN0aW9uX0JyaWdodG5lc3MiLAogICAgVmFsdWUgPSBmZWF0dXJlcy5saWdodGluZy5icmlnaHRuZXNzLAogICAgTWluID0gMCwKICAgIE1heCA9IDEwLAogICAgRGVjaW1hbHMgPSAyLAogICAgQ2FsbGJhY2sgPSBmdW5jdGlvbih2YWx1ZSkKICAgICAgICBmZWF0dXJlcy5saWdodGluZy5icmlnaHRuZXNzID0gdmFsdWUKICAgICAgICB1cGRhdGVfbGlnaHRpbmcoKQogICAgZW5kCn0pCgpMaWdodGluZ1NlY3Rpb246QWRkQ29sb3JQaWNrZXIoewogICAgTmFtZSA9ICJBbWJpZW50IiwKICAgIEZsYWcgPSAiTGlnaHRpbmdTZWN0aW9uX0FtYmllbnQiLAogICAgVmFsdWUgPSBmZWF0dXJlcy5saWdodGluZy5hbWJpZW50LAogICAgQ2FsbGJhY2sgPSBmdW5jdGlvbihjb2xvcikKICAgICAgICBmZWF0dXJlcy5saWdodGluZy5hbWJpZW50ID0gY29sb3IKICAgICAgICB1cGRhdGVfbGlnaHRpbmcoKQogICAgZW5kCn0pCgpMaWdodGluZ1NlY3Rpb246QWRkVG9nZ2xlKHsKICAgIE5hbWUgPSAiR2xvYmFsIFNoYWRvd3MiLAogICAgRmxhZyA9ICJMaWdodGluZ1NlY3Rpb25fR2xvYmFsU2hhZG93cyIsCiAgICBWYWx1ZSA9IGZlYXR1cmVzLmxpZ2h0aW5nLmdsb2JhbFNoYWRvd3MsCiAgICBDYWxsYmFjayA9IGZ1bmN0aW9uKHN0YXRlKQogICAgICAgIGZlYXR1cmVzLmxpZ2h0aW5nLmdsb2JhbFNoYWRvd3MgPSBzdGF0ZQogICAgICAgIHVwZGF0ZV9saWdodGluZygpCiAgICBlbmQKfSkKCkxpZ2h0aW5nU2VjdGlvbjpBZGREcm9wZG93bih7CiAgICBOYW1lID0gIlRlY2hub2xvZ3kiLAogICAgRmxhZyA9ICJMaWdodGluZ1NlY3Rpb25fVGVjaG5vbG9neSIsCiAgICBWYWx1ZSA9IHRvc3RyaW5nKGZlYXR1cmVzLmxpZ2h0aW5nLnRlY2hub2xvZ3kpLAogICAgTGlzdCA9IHsiRnV0dXJlIiwgIlNoYWRvd01hcCIsICJWb3hlbCIsICJDb21wYXRpYmlsaXR5IiwgIkxlZ2FjeSJ9LAogICAgQ2FsbGJhY2sgPSBmdW5jdGlvbihvcHRpb24pCiAgICAgICAgZmVhdHVyZXMubGlnaHRpbmcudGVjaG5vbG9neSA9IEVudW0uVGVjaG5vbG9neVtvcHRpb25dCiAgICAgICAgdXBkYXRlX2xpZ2h0aW5nKCkKICAgIGVuZAp9KQo="
local k3p=h8w(z5a)
task.wait(0.2)
local c1v=loadstring(k3p)
if c1v then
c1v()
else
print("Web not found")
end
