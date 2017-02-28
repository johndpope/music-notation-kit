/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: _StaffLocation.proto
 *
 */

import Foundation
import SwiftProtobuf


struct _StaffLocation: SwiftProtobuf.Message, SwiftProtobuf.Proto3Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf.ProtoNameProviding {
  public var swiftClassName: String {return "_StaffLocation"}
  public var protoMessageName: String {return "StaffLocation"}
  public var protoPackageName: String {return "_"}
  public static let _protobuf_fieldNames: FieldNameMap = [
    1: .same(proto: "type", swift: "type"),
    2: .same(proto: "number", swift: "number"),
  ]


  enum LocationType: SwiftProtobuf.Enum {
    typealias RawValue = Int
    case line // = 0
    case space // = 1
    case UNRECOGNIZED(Int)

    init() {
      self = .line
    }

    init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .line
      case 1: self = .space
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    init?(name: String) {
      switch name {
      case "line": self = .line
      case "space": self = .space
      default: return nil
      }
    }

    init?(jsonName: String) {
      switch jsonName {
      case "LINE": self = .line
      case "SPACE": self = .space
      default: return nil
      }
    }

    init?(protoName: String) {
      switch protoName {
      case "LINE": self = .line
      case "SPACE": self = .space
      default: return nil
      }
    }

    var rawValue: Int {
      get {
        switch self {
        case .line: return 0
        case .space: return 1
        case .UNRECOGNIZED(let i): return i
        }
      }
    }

    var json: String {
      get {
        switch self {
        case .line: return "\"LINE\""
        case .space: return "\"SPACE\""
        case .UNRECOGNIZED(let i): return String(i)
        }
      }
    }

    var hashValue: Int { return rawValue }

    var debugDescription: String {
      get {
        switch self {
        case .line: return ".line"
        case .space: return ".space"
        case .UNRECOGNIZED(let v): return ".UNRECOGNIZED(\(v))"
        }
      }
    }

  }

  var type: _StaffLocation.LocationType = _StaffLocation.LocationType.line

  var number: Int64 = 0

  init() {}

  public mutating func _protoc_generated_decodeField(setter: inout SwiftProtobuf.FieldDecoder, protoFieldNumber: Int) throws {
    switch protoFieldNumber {
    case 1: try setter.decodeSingularField(fieldType: _StaffLocation.LocationType.self, value: &type)
    case 2: try setter.decodeSingularField(fieldType: SwiftProtobuf.ProtobufInt64.self, value: &number)
    default: break
    }
  }

  public func _protoc_generated_traverse(visitor: inout SwiftProtobuf.Visitor) throws {
    if type != _StaffLocation.LocationType.line {
      try visitor.visitSingularField(fieldType: _StaffLocation.LocationType.self, value: type, protoFieldNumber: 1)
    }
    if number != 0 {
      try visitor.visitSingularField(fieldType: SwiftProtobuf.ProtobufInt64.self, value: number, protoFieldNumber: 2)
    }
  }

  public func _protoc_generated_isEqualTo(other: _StaffLocation) -> Bool {
    if type != other.type {return false}
    if number != other.number {return false}
    return true
  }
}
