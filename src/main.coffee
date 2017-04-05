global = Function('return this')()

# подключаем moment в глобальную оласть видимости
global.moment = require 'moment'
# подключаем moment-ru
require 'moment/locale/ru.js'
# локализуем moment
global.moment.locale 'ru'

global.moment.sub = global.moment.subtract

# метод parse
# устанавливает нужную дату, если она валидна
global.moment.fn.parse = (str) ->
  if str?
    date = moment(str)
    if date.isValid()
      @_d = date.toDate()
  return @

# перейти в начало недели
global.moment.fn.weekStart = ->
  @hours 0
  @minutes 0
  @seconds 0
  @milliseconds 0
  day = @weekday()
  if day < 3
    @subtract (day+4), 'days'
  else if day > 3
    @subtract (day-3), 'days'
  return @

# перейти в конец недели
global.moment.fn.weekEnd = ->
  do @weekStart
  @add 7, 'days'
  @subtract 1, 'ms'
