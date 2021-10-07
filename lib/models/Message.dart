/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// ignore_for_file: public_member_api_docs

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the Message type in your schema. */
@immutable
class Message extends Model {
  static const classType = const _MessageModelType();
  final String id;
  final String? _senderName;
  final String? _body;
  final TemporalDate? _creationDate;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String get senderName {
    try {
      return _senderName!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  String get body {
    try {
      return _body!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  TemporalDate get creationDate {
    try {
      return _creationDate!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  const Message._internal({required this.id, required senderName, required body, required creationDate}): _senderName = senderName, _body = body, _creationDate = creationDate;
  
  factory Message({String? id, required String senderName, required String body, required TemporalDate creationDate}) {
    return Message._internal(
      id: id == null ? UUID.getUUID() : id,
      senderName: senderName,
      body: body,
      creationDate: creationDate);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Message &&
      id == other.id &&
      _senderName == other._senderName &&
      _body == other._body &&
      _creationDate == other._creationDate;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Message {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("senderName=" + "$_senderName" + ", ");
    buffer.write("body=" + "$_body" + ", ");
    buffer.write("creationDate=" + (_creationDate != null ? _creationDate!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Message copyWith({String? id, String? senderName, String? body, TemporalDate? creationDate}) {
    return Message(
      id: id ?? this.id,
      senderName: senderName ?? this.senderName,
      body: body ?? this.body,
      creationDate: creationDate ?? this.creationDate);
  }
  
  Message.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _senderName = json['senderName'],
      _body = json['body'],
      _creationDate = json['creationDate'] != null ? TemporalDate.fromString(json['creationDate']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'senderName': _senderName, 'body': _body, 'creationDate': _creationDate?.format()
  };

  static final QueryField ID = QueryField(fieldName: "message.id");
  static final QueryField SENDERNAME = QueryField(fieldName: "senderName");
  static final QueryField BODY = QueryField(fieldName: "body");
  static final QueryField CREATIONDATE = QueryField(fieldName: "creationDate");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Message";
    modelSchemaDefinition.pluralName = "Messages";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Message.SENDERNAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Message.BODY,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Message.CREATIONDATE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.date)
    ));
  });
}

class _MessageModelType extends ModelType<Message> {
  const _MessageModelType();
  
  @override
  Message fromJson(Map<String, dynamic> jsonData) {
    return Message.fromJson(jsonData);
  }
}