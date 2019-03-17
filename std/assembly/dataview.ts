import { MAX_BYTELENGTH } from "./runtime";
import { ArrayBuffer } from "./arraybuffer";

export class DataView {

  private data: ArrayBuffer;
  private dataStart: usize;
  private dataLength: u32;

  constructor(
    buffer: ArrayBuffer,
    byteOffset: i32 = 0,
    byteLength: i32 = i32.MIN_VALUE // FIXME
  ) {
    if (byteLength === i32.MIN_VALUE) byteLength = buffer.byteLength - byteOffset; // FIXME
    if (<u32>byteLength > <u32>MAX_BYTELENGTH) throw new RangeError("Invalid byteLength");
    if (<u32>byteOffset + byteLength > <u32>buffer.byteLength) throw new RangeError("Invalid length");
    this.data = buffer; // links
    var dataStart = changetype<usize>(buffer) + <usize>byteOffset;
    this.dataStart = dataStart;
    this.dataLength = byteLength;
  }

  get buffer(): ArrayBuffer {
    return this.data;
  }

  get byteOffset(): i32 {
    return <i32>(this.dataStart - changetype<usize>(this.data));
  }

  get byteLength(): i32 {
    return this.dataLength;
  }

  getFloat32(byteOffset: i32, littleEndian: boolean = false): f32 {
    if (byteOffset + 4 > this.dataLength) throw new Error("Offset out of bounds");
    return littleEndian
      ? load<f32>(this.dataStart + <usize>byteOffset)
      : reinterpret<f32>(
          bswap<u32>(
            load<u32>(this.dataStart + <usize>byteOffset)
          )
        );
  }

  getFloat64(byteOffset: i32, littleEndian: boolean = false): f64 {
    if (byteOffset + 4 > this.dataLength) throw new Error("Offset out of bounds");
    return littleEndian
      ? load<f64>(this.dataStart + <usize>byteOffset)
      : reinterpret<f64>(
          bswap<u64>(
            load<u64>(this.dataStart + <usize>byteOffset)
          )
        );
  }

  getInt8(byteOffset: i32): i8 {
    if (byteOffset >= this.dataLength) throw new Error("Offset out of bounds");
    return load<i8>(this.dataStart + <usize>byteOffset);
  }

  getInt16(byteOffset: i32, littleEndian: boolean = false): i16 {
    if (byteOffset + 2 > this.dataLength) throw new Error("Offset out of bounds");
    var result: i16 = load<i16>(this.dataStart + <usize>byteOffset);
    return littleEndian ? result : bswap<i16>(result);
  }

  getInt32(byteOffset: i32, littleEndian: boolean = false): i32 {
    if (byteOffset + 4 > this.dataLength) throw new Error("Offset out of bounds");
    var result: i32 = load<i32>(this.dataStart + <usize>byteOffset);
    return littleEndian ? result : bswap<i32>(result);
  }

  getUint8(byteOffset: i32): u8 {
    if (byteOffset >= this.dataLength) throw new Error("Offset out of bounds");
    return load<u8>(this.dataStart + <usize>byteOffset);
  }

  getUint16(byteOffset: i32, littleEndian: boolean = false): u16 {
    if (byteOffset + 2 > this.dataLength) throw new Error("Offset out of bounds");
    var result: u16 = load<u16>(this.dataStart + <usize>byteOffset);
    return littleEndian ? result : bswap<u16>(result);
  }

  getUint32(byteOffset: i32, littleEndian: boolean = false): u32 {
    if (byteOffset + 2 > this.dataLength) throw new Error("Offset out of bounds");
    var result: u32 = load<u32>(this.dataStart + <usize>byteOffset);
    return littleEndian ? result : bswap<u32>(result);
  }

  setFloat32(byteOffset: i32, value: f32, littleEndian: boolean = false): void {
    if (byteOffset + 4 > this.dataLength) throw new Error("Offset out of bounds");
    if (littleEndian) store<f32>(this.dataStart + <usize>byteOffset, value);
    else store<u32>(this.dataStart + <usize>byteOffset, bswap<u32>(reinterpret<u32>(value)));
  }

  setFloat64(byteOffset: i32, value: f64, littleEndian: boolean = false): void {
    if (byteOffset + 8 > this.dataLength) throw new Error("Offset out of bounds");
    if (littleEndian) store<f64>(this.dataStart + <usize>byteOffset, value);
    else store<u64>(this.dataStart + <usize>byteOffset, bswap<u64>(reinterpret<u64>(value)));
  }

  setInt8(byteOffset: i32, value: i8): void {
    if (byteOffset >= this.dataLength) throw new Error("Offset out of bounds");
    store<i8>(this.dataStart + <usize>byteOffset, value);
  }

  setInt16(byteOffset: i32, value: i16, littleEndian: boolean = false): void {
    if (byteOffset + 2 > this.dataLength) throw new Error("Offset out of bounds");
    store<i16>(this.dataStart + <usize>byteOffset, littleEndian ? value : bswap<i16>(value));
  }

  setInt32(byteOffset: i32, value: i32, littleEndian: boolean = false): void {
    if (byteOffset + 4 > this.dataLength) throw new Error("Offset out of bounds");
    store<i32>(this.dataStart + <usize>byteOffset, littleEndian ? value : bswap<i32>(value));
  }

  setUint8(byteOffset: i32, value: u8): void {
    if (byteOffset >= this.dataLength) throw new Error("Offset out of bounds");
    store<u8>(this.dataStart + <usize>byteOffset, value);
  }

  setUint16(byteOffset: i32, value: u16, littleEndian: boolean = false): void {
    if (byteOffset + 2 > this.dataLength) throw new Error("Offset out of bounds");
    store<u16>(this.dataStart + <usize>byteOffset, littleEndian ? value : bswap<u16>(value));
  }

  setUint32(byteOffset: i32, value: u32, littleEndian: boolean = false): void {
    if (byteOffset + 4 > this.dataLength) throw new Error("Offset out of bounds");
    store<u32>(this.dataStart + <usize>byteOffset, littleEndian ? value : bswap<u32>(value));
  }

  // Non-standard additions that make sense in WebAssembly, but won't work in JS:

  getInt64(byteOffset: i32, littleEndian: boolean = false): i64 {
    if (byteOffset + 8 > this.dataLength) throw new Error("Offset out of bounds");
    var result: i64 = load<i64>(this.dataStart + <usize>byteOffset);
    return littleEndian ? result : bswap<i64>(result);
  }

  getUint64(byteOffset: i32, littleEndian: boolean = false): u64 {
    if (byteOffset + 8 > this.dataLength) throw new Error("Offset out of bounds");
    var result = load<u64>(this.dataStart + <usize>byteOffset);
    return littleEndian ? result : bswap<u64>(result);
  }

  setInt64(byteOffset: i32, value: i64, littleEndian: boolean = false): void {
    if (byteOffset + 8 > this.dataLength) throw new Error("Offset out of bounds");
    store<i64>(this.dataStart + <usize>byteOffset, littleEndian ? value : bswap<i64>(value));
  }

  setUint64(byteOffset: i32, value: u64, littleEndian: boolean = false): void {
    if (byteOffset + 8 > this.dataLength) throw new Error("Offset out of bounds");
    store<u64>(this.dataStart + <usize>byteOffset, littleEndian ? value : bswap<u64>(value));
  }

  toString(): string {
    return "[object DataView]";
  }
}
