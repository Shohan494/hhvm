(**
 * Copyright (c) 2015, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the "hack" directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 *
 *)

(*****************************************************************************)
(* Formats a diff (in place)
 * -) 'root' is the root directory of the diff.
 * -) 'diff' is the diff itself.
 *)
(*****************************************************************************)

open Parse_diff

val parse_diff: Path.t -> string -> file_diff list
val apply:
  FileInfo.mode option list -> Format_mode.t -> diff:(file_diff list) -> unit
