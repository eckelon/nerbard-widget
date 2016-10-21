command: "ESC=`printf \"\e\"`; ps -A -o %cpu | awk '{s+=$1} END {printf(\"%.2f\",s/8);}'"

refreshFrequency: 2000 # ms

render: (output) ->
  """
  <svg style="display: inline-block; vertical-align: middle;" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="20" height="20" viewBox="0 0 20 20">
    <path fill="#D5C4A2" d="M18.8,10.8c0.5,0,0.8-0.4,0.8-0.8s-0.4-0.8-0.8-0.8h-2.3V8h2.3c0.5,0,0.8-0.4,0.8-0.8s-0.4-0.8-0.8-0.8
      h-2.3v-2c0-0.5-0.4-0.8-0.8-0.8h-2.1V1.2c0-0.5-0.4-0.8-0.8-0.8c-0.5,0-0.8,0.4-0.8,0.8v2.4h-1.2V1.2c0-0.5-0.4-0.8-0.8-0.8
      S9.2,0.7,9.2,1.2v2.4H8V1.2c0-0.5-0.4-0.8-0.8-0.8c-0.5,0-0.8,0.4-0.8,0.8v2.4H4.4C4,3.5,3.6,3.9,3.6,4.4v2H1.2
      c-0.5,0-0.8,0.4-0.8,0.8C0.3,7.7,0.7,8,1.2,8h2.5v1.2H1.2c-0.5,0-0.8,0.4-0.8,0.8c0,0.5,0.4,0.8,0.8,0.8h2.5v1.1H1.2
      c-0.5,0-0.8,0.4-0.8,0.8c0,0.5,0.4,0.8,0.8,0.8h2.5v2c0,0.5,0.4,0.8,0.8,0.8h1.9v2.4c0,0.5,0.4,0.8,0.8,0.8c0.5,0,0.8-0.4,0.8-0.8
      v-2.4h1.2v2.4c0,0.5,0.4,0.8,0.8,0.8s0.8-0.4,0.8-0.8v-2.4H12v2.4c0,0.5,0.4,0.8,0.8,0.8c0.4,0,0.8-0.4,0.8-0.8v-2.4h2.1
      c0.5,0,0.8-0.3,0.8-0.8v-2h2.3c0.5,0,0.8-0.4,0.8-0.8c0-0.5-0.4-0.8-0.8-0.8h-2.3v-1.1H18.8z M14.8,14.8H5.2V5.2h9.6V14.8z"/>
  </svg>
  <span>#{output}</span>
  """

style: """
  -webkit-font-smoothing: antialiased
  color: #D5C4A1
  font: 14px SF Mono
  right: 380px
  top: 10px
  span
    color: #7AAB7E
"""
