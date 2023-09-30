module Spec.Chacha20Poly1305.Test

open FStar.Mul
open Lib.IntTypes
open Lib.RawIntTypes
open Lib.Sequence
open Lib.ByteSequence
module PS = Lib.PrintSequence

open Spec.Chacha20Poly1305

#set-options "--z3rlimit 50 --fuel 0 --ifuel 0"

(* Tests: RFC7539 *)

let test_key : lbytes 32 =
  let l = List.Tot.map u8_from_UInt8 [
    0x80uy; 0x81uy; 0x82uy; 0x83uy; 0x84uy; 0x85uy; 0x86uy; 0x87uy;
    0x88uy; 0x89uy; 0x8auy; 0x8buy; 0x8cuy; 0x8duy; 0x8euy; 0x8fuy;
    0x90uy; 0x91uy; 0x92uy; 0x93uy; 0x94uy; 0x95uy; 0x96uy; 0x97uy;
    0x98uy; 0x99uy; 0x9auy; 0x9buy; 0x9cuy; 0x9duy; 0x9euy; 0x9fuy ] in
  assert_norm (List.Tot.length l == 32);
  of_list l


let test_nonce : lbytes 12 =
  let l = List.Tot.map u8_from_UInt8 [
    0x07uy; 0x00uy; 0x00uy; 0x00uy; 0x40uy; 0x41uy; 0x42uy; 0x43uy;
    0x44uy; 0x45uy; 0x46uy; 0x47uy ] in
  assert_norm (List.Tot.length l == 12);
  of_list l


let test_plaintext : lbytes 114 =
  let l = List.Tot.map u8_from_UInt8 [
    0x4cuy; 0x61uy; 0x64uy; 0x69uy; 0x65uy; 0x73uy; 0x20uy; 0x61uy;
    0x6euy; 0x64uy; 0x20uy; 0x47uy; 0x65uy; 0x6euy; 0x74uy; 0x6cuy;
    0x65uy; 0x6duy; 0x65uy; 0x6euy; 0x20uy; 0x6fuy; 0x66uy; 0x20uy;
    0x74uy; 0x68uy; 0x65uy; 0x20uy; 0x63uy; 0x6cuy; 0x61uy; 0x73uy;
    0x73uy; 0x20uy; 0x6fuy; 0x66uy; 0x20uy; 0x27uy; 0x39uy; 0x39uy;
    0x3auy; 0x20uy; 0x49uy; 0x66uy; 0x20uy; 0x49uy; 0x20uy; 0x63uy;
    0x6fuy; 0x75uy; 0x6cuy; 0x64uy; 0x20uy; 0x6fuy; 0x66uy; 0x66uy;
    0x65uy; 0x72uy; 0x20uy; 0x79uy; 0x6fuy; 0x75uy; 0x20uy; 0x6fuy;
    0x6euy; 0x6cuy; 0x79uy; 0x20uy; 0x6fuy; 0x6euy; 0x65uy; 0x20uy;
    0x74uy; 0x69uy; 0x70uy; 0x20uy; 0x66uy; 0x6fuy; 0x72uy; 0x20uy;
    0x74uy; 0x68uy; 0x65uy; 0x20uy; 0x66uy; 0x75uy; 0x74uy; 0x75uy;
    0x72uy; 0x65uy; 0x2cuy; 0x20uy; 0x73uy; 0x75uy; 0x6euy; 0x73uy;
    0x63uy; 0x72uy; 0x65uy; 0x65uy; 0x6euy; 0x20uy; 0x77uy; 0x6fuy;
    0x75uy; 0x6cuy; 0x64uy; 0x20uy; 0x62uy; 0x65uy; 0x20uy; 0x69uy;
    0x74uy; 0x2euy ] in
  assert_norm (List.Tot.length l == 114);
  of_list l


let test_aad : lbytes 12 =
  let l = List.Tot.map u8_from_UInt8 [
    0x50uy; 0x51uy; 0x52uy; 0x53uy; 0xc0uy; 0xc1uy; 0xc2uy; 0xc3uy;
    0xc4uy; 0xc5uy; 0xc6uy; 0xc7uy ] in
  assert_norm (List.Tot.length l == 12);
  of_list l


let test_cipher : lbytes 114 =
  let l = List.Tot.map u8_from_UInt8 [
    0xd3uy; 0x1auy; 0x8duy; 0x34uy; 0x64uy; 0x8euy; 0x60uy; 0xdbuy;
    0x7buy; 0x86uy; 0xafuy; 0xbcuy; 0x53uy; 0xefuy; 0x7euy; 0xc2uy;
    0xa4uy; 0xaduy; 0xeduy; 0x51uy; 0x29uy; 0x6euy; 0x08uy; 0xfeuy;
    0xa9uy; 0xe2uy; 0xb5uy; 0xa7uy; 0x36uy; 0xeeuy; 0x62uy; 0xd6uy;
    0x3duy; 0xbeuy; 0xa4uy; 0x5euy; 0x8cuy; 0xa9uy; 0x67uy; 0x12uy;
    0x82uy; 0xfauy; 0xfbuy; 0x69uy; 0xdauy; 0x92uy; 0x72uy; 0x8buy;
    0x1auy; 0x71uy; 0xdeuy; 0x0auy; 0x9euy; 0x06uy; 0x0buy; 0x29uy;
    0x05uy; 0xd6uy; 0xa5uy; 0xb6uy; 0x7euy; 0xcduy; 0x3buy; 0x36uy;
    0x92uy; 0xdduy; 0xbduy; 0x7fuy; 0x2duy; 0x77uy; 0x8buy; 0x8cuy;
    0x98uy; 0x03uy; 0xaeuy; 0xe3uy; 0x28uy; 0x09uy; 0x1buy; 0x58uy;
    0xfauy; 0xb3uy; 0x24uy; 0xe4uy; 0xfauy; 0xd6uy; 0x75uy; 0x94uy;
    0x55uy; 0x85uy; 0x80uy; 0x8buy; 0x48uy; 0x31uy; 0xd7uy; 0xbcuy;
    0x3fuy; 0xf4uy; 0xdeuy; 0xf0uy; 0x8euy; 0x4buy; 0x7auy; 0x9duy;
    0xe5uy; 0x76uy; 0xd2uy; 0x65uy; 0x86uy; 0xceuy; 0xc6uy; 0x4buy;
    0x61uy; 0x16uy; ] in
  assert_norm (List.Tot.length l == 114);
  of_list l


let test_mac : lbytes 16 =
  let l = List.Tot.map u8_from_UInt8 [
    0x1auy; 0xe1uy; 0x0buy; 0x59uy; 0x4fuy; 0x09uy; 0xe2uy; 0x6auy;
    0x7euy; 0x90uy; 0x2euy; 0xcbuy; 0xd0uy; 0x60uy; 0x06uy; 0x91uy ] in
  assert_norm (List.Tot.length l == 16);
  of_list l


#set-options "--ifuel 2"

val test_aead:
    k:key
  -> n:nonce
  -> m:bytes{length m <= max_size_t}
  -> aad:bytes{length aad <= maxint U64}
  -> c_expected:bytes{length c_expected = length m}
  -> mac_expected:tag ->
  FStar.All.ML bool

let test_aead k n m aad c_expected mac_expected =
  let enc = aead_encrypt k n m aad in
  let mlen = length m in
  let cipher, mac = Seq.slice enc 0 mlen, Seq.slice enc mlen (mlen + 16) in
  let dec = aead_decrypt k n c_expected mac_expected aad in

  IO.print_string "\n cipher:";
  let res_c = PS.print_compare true mlen c_expected cipher in
  IO.print_string "\n mac:";
  let res_m = PS.print_compare true 16 mac_expected mac in
  IO.print_string "\n plain:";
  let res_p =
    if Some? dec then PS.print_compare true mlen m (Some?.v dec)
    else false in

  let res = res_c && res_m && res_p in
  if res then IO.print_string "\n Chacha20Poly1305 Test: Success!\n"
  else IO.print_string "\n Chacha20Poly1305 Test: Failure :(\n";
  res


let test () =
  let res =
    test_aead
      test_key test_nonce test_plaintext test_aad test_cipher test_mac in

  if res
  then begin IO.print_string "\nChacha20Poly1305: Success! \o/ \n"; true end
  else begin IO.print_string "\nChacha20Poly1305: Failure :(\n"; false end