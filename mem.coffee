command: "ESC=`printf \"\e\"`; ps -A -o %mem | awk '{s+=$1} END {print \"\" s}'"

refreshFrequency: 30000 # ms

render: (output) ->
  """
  <svg style="display: inline-block; vertical-align: middle;" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="20" height="20" viewBox="0 0 20 20">
        <path fill="#9C9487" d="M19.6,4.9H0.4C0.2,4.9,0,5.1,0,5.3v7.8c0,0.2,0.2,0.4,0.4,0.4h0.4v2.2c0,0.2,0.2,0.4,0.4,0.4h17.4
          c0.2,0,0.4-0.2,0.4-0.4v-2.2h0.4c0.2,0,0.4-0.2,0.4-0.4V5.3C20,5.1,19.8,4.9,19.6,4.9z M18.3,15.3H17h-1.7h-1.7h-1.7H10H8.3H6.5
          H4.8H3H1.7v-1.7H3h1.7h1.7h1.7H10h1.7h1.7h1.7H17h1.3L18.3,15.3L18.3,15.3z M19.1,12.7h-0.4H1.3H0.9v-7h18.3V12.7z"/>
        <path fill="#9C9487" d="M2.2,11.9h2.6c0.2,0,0.4-0.2,0.4-0.4V7.1c0-0.2-0.2-0.4-0.4-0.4H2.2c-0.2,0-0.4,0.2-0.4,0.4v4.3
          C1.7,11.7,1.9,11.9,2.2,11.9z M2.6,7.5h1.7V11H2.6V7.5z"/>
        <path fill="#9C9487" d="M6.5,11.9h2.6c0.2,0,0.4-0.2,0.4-0.4V7.1c0-0.2-0.2-0.4-0.4-0.4H6.5c-0.2,0-0.4,0.2-0.4,0.4v4.3
          C6.1,11.7,6.3,11.9,6.5,11.9z M7,7.5h1.7V11H7C7,11,7,7.5,7,7.5z"/>
        <path fill="#9C9487" d="M10.9,11.9h2.6c0.2,0,0.4-0.2,0.4-0.4V7.1c0-0.2-0.2-0.4-0.4-0.4h-2.6c-0.2,0-0.4,0.2-0.4,0.4v4.3
          C10.4,11.7,10.6,11.9,10.9,11.9z M11.3,7.5H13V11h-1.7V7.5z"/>
        <path fill="#9C9487" d="M15.2,11.9h2.6c0.2,0,0.4-0.2,0.4-0.4V7.1c0-0.2-0.2-0.4-0.4-0.4h-2.6c-0.2,0-0.4,0.2-0.4,0.4v4.3
          C14.8,11.7,15,11.9,15.2,11.9z M15.7,7.5h1.7V11h-1.7L15.7,7.5L15.7,7.5z"/>
        <path fill="#9C9487" d="M3.5,14.9V14c0-0.2-0.2-0.4-0.4-0.4S2.6,13.8,2.6,14v0.9c0,0.2,0.2,0.4,0.4,0.4
          C3.3,15.3,3.5,15.1,3.5,14.9z"/>
        <path fill="#9C9487" d="M5.2,14.9V14c0-0.2-0.2-0.4-0.4-0.4c-0.2,0-0.4,0.2-0.4,0.4v0.9c0,0.2,0.2,0.4,0.4,0.4
          C5,15.3,5.2,15.1,5.2,14.9z"/>
        <path fill="#9C9487" d="M7,14.9V14c0-0.2-0.2-0.4-0.4-0.4c-0.2,0-0.4,0.2-0.4,0.4v0.9c0,0.2,0.2,0.4,0.4,0.4
          C6.8,15.3,7,15.1,7,14.9z"/>
        <path fill="#9C9487" d="M8.7,14.9V14c0-0.2-0.2-0.4-0.4-0.4c-0.2,0-0.4,0.2-0.4,0.4v0.9c0,0.2,0.2,0.4,0.4,0.4
          C8.5,15.3,8.7,15.1,8.7,14.9z"/>
        <path fill="#9C9487" d="M10.4,14.9V14c0-0.2-0.2-0.4-0.4-0.4S9.6,13.8,9.6,14v0.9c0,0.2,0.2,0.4,0.4,0.4S10.4,15.1,10.4,14.9z"/>
        <path fill="#9C9487" d="M12.2,14.9V14c0-0.2-0.2-0.4-0.4-0.4s-0.4,0.2-0.4,0.4v0.9c0,0.2,0.2,0.4,0.4,0.4
          C12,15.3,12.2,15.1,12.2,14.9z"/>
        <path fill="#9C9487" d="M13.9,14.9V14c0-0.2-0.2-0.4-0.4-0.4S13,13.8,13,14v0.9c0,0.2,0.2,0.4,0.4,0.4
          C13.7,15.3,13.9,15.1,13.9,14.9z"/>
        <path fill="#9C9487" d="M15.7,14.9V14c0-0.2-0.2-0.4-0.4-0.4c-0.2,0-0.4,0.2-0.4,0.4v0.9c0,0.2,0.2,0.4,0.4,0.4
          C15.5,15.3,15.7,15.1,15.7,14.9z"/>
        <path fill="#9C9487" d="M17.4,14.9V14c0-0.2-0.2-0.4-0.4-0.4c-0.2,0-0.4,0.2-0.4,0.4v0.9c0,0.2,0.2,0.4,0.4,0.4
          C17.2,15.3,17.4,15.1,17.4,14.9z"/>
  </svg>
  <span>#{output}</span>
  """

style: """
  -webkit-font-smoothing: antialiased
  color: #D5C4A1
  font: 14px SF Mono
  right: 300px
  top: 10px
  span
    color: #9C9486
"""
