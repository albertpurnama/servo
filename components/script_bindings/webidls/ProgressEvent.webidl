/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at https://mozilla.org/MPL/2.0/. */
/*
 * The origin of this IDL file is
 * https://xhr.spec.whatwg.org/#interface-progressevent
 *
 * To the extent possible under law, the editor has waived all copyright
 * and related or neighboring rights to this work. In addition, as of 1 May 2014,
 * the editor has made this specification available under the Open Web Foundation
 * Agreement Version 1.0, which is available at
 * http://www.openwebfoundation.org/legal/the-owf-1-0-agreements/owfa-1-0.
 */

[Exposed=(Window,Worker)]
interface ProgressEvent : Event {
  [Throws] constructor(DOMString type, optional ProgressEventInit eventInitDict = {});
  readonly attribute boolean lengthComputable;
  readonly attribute double loaded;
  readonly attribute double total;
};

dictionary ProgressEventInit : EventInit {
  boolean lengthComputable = false;
  double loaded = 0;
  double total = 0;
};
