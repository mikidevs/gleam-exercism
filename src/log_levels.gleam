import gleam/string

pub fn message(log_line: String) -> String {
  case log_line {
    "[INFO]: " <> message | "[WARNING]: " <> message | "[ERROR]: " <> message ->
      string.trim(message)
    _ -> ""
  }
}

pub fn log_level(log_line: String) -> String {
  case log_line {
    "[INFO]: " -> "info"
    "[WARNING]: " -> "warning"
    "[ERROR]: " -> "error"
    _ -> ""
  }
}

pub fn better_log_level(log_line: String) -> String {
  case string.split_once(log_line, on: "]: ") {
    Ok(#(first, _)) -> first |> string.drop_left(1) |> string.lowercase
    Error(_) -> ""
  }
}

pub fn reformat(log_line: String) -> String {
  message(log_line) <> " (" <> better_log_level(log_line) <> ")"
}
