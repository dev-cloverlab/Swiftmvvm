import SwiftyBeaver

let LOGGER_FORMAT = "$Dyyyy-MM-dd HH:mm:ss$d $N.$F:$l $L: $M"
let LOGGER = SwiftyBeaver.self

func logv(_ message: @autoclosure () -> Any,
          _file: String = #file,
          _ function: String = #function,
          line: Int = #line,
          context: Any? = nil) {
    LOGGER.verbose(message, _file, function, line: line, context: context)
}

func logd(_ message: @autoclosure () -> Any,
          _file: String = #file,
          _ function: String = #function,
          line: Int = #line,
          context: Any? = nil) {
    LOGGER.debug(message, _file, function, line: line, context: context)
}

func logi(_ message: @autoclosure () -> Any,
          _file: String = #file,
          _ function: String = #function,
          line: Int = #line,
          context: Any? = nil) {
    LOGGER.info(message, _file, function, line: line, context: context)
}

func logw(_ message: @autoclosure () -> Any,
          _file: String = #file,
          _ function: String = #function,
          line: Int = #line,
          context: Any? = nil) {
    LOGGER.warning(message, _file, function, line: line, context: context)
}

func loge(_ message: @autoclosure () -> Any,
          _file: String = #file,
          _ function: String = #function,
          line: Int = #line,
          context: Any? = nil) {
    LOGGER.error(message, _file, function, line: line, context: context)
}