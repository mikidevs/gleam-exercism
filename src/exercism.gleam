import gleam/io
import log_levels

pub fn main() {
  "[ERROR]: Invalid operation" |> log_levels.reformat |> io.println
}
