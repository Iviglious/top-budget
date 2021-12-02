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

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, file_names, unnecessary_new, prefer_if_null_operators, prefer_const_constructors, slash_for_doc_comments, annotate_overrides, non_constant_identifier_names, unnecessary_string_interpolations, prefer_adjacent_string_concatenation, unnecessary_const, dead_code

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the Account type in your schema. */
@immutable
class Account extends Model {
  static const classType = const _AccountModelType();
  final String id;
  final String? _account_name;
  final String? _account_type;
  final String? _account_owner;
  final double? _credit_limit;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get account_name {
    return _account_name;
  }
  
  String? get account_type {
    return _account_type;
  }
  
  String? get account_owner {
    return _account_owner;
  }
  
  double? get credit_limit {
    return _credit_limit;
  }
  
  const Account._internal({required this.id, account_name, account_type, account_owner, credit_limit}): _account_name = account_name, _account_type = account_type, _account_owner = account_owner, _credit_limit = credit_limit;
  
  factory Account({String? id, String? account_name, String? account_type, String? account_owner, double? credit_limit}) {
    return Account._internal(
      id: id == null ? UUID.getUUID() : id,
      account_name: account_name,
      account_type: account_type,
      account_owner: account_owner,
      credit_limit: credit_limit);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Account &&
      id == other.id &&
      _account_name == other._account_name &&
      _account_type == other._account_type &&
      _account_owner == other._account_owner &&
      _credit_limit == other._credit_limit;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Account {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("account_name=" + "$_account_name" + ", ");
    buffer.write("account_type=" + "$_account_type" + ", ");
    buffer.write("account_owner=" + "$_account_owner" + ", ");
    buffer.write("credit_limit=" + (_credit_limit != null ? _credit_limit!.toString() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Account copyWith({String? id, String? account_name, String? account_type, String? account_owner, double? credit_limit}) {
    return Account(
      id: id ?? this.id,
      account_name: account_name ?? this.account_name,
      account_type: account_type ?? this.account_type,
      account_owner: account_owner ?? this.account_owner,
      credit_limit: credit_limit ?? this.credit_limit);
  }
  
  Account.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _account_name = json['account_name'],
      _account_type = json['account_type'],
      _account_owner = json['account_owner'],
      _credit_limit = (json['credit_limit'] as num?)?.toDouble();
  
  Map<String, dynamic> toJson() => {
    'id': id, 'account_name': _account_name, 'account_type': _account_type, 'account_owner': _account_owner, 'credit_limit': _credit_limit
  };

  static final QueryField ID = QueryField(fieldName: "account.id");
  static final QueryField ACCOUNT_NAME = QueryField(fieldName: "account_name");
  static final QueryField ACCOUNT_TYPE = QueryField(fieldName: "account_type");
  static final QueryField ACCOUNT_OWNER = QueryField(fieldName: "account_owner");
  static final QueryField CREDIT_LIMIT = QueryField(fieldName: "credit_limit");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Account";
    modelSchemaDefinition.pluralName = "Accounts";
    
    modelSchemaDefinition.authRules = [
      AuthRule(
        authStrategy: AuthStrategy.PUBLIC,
        operations: [
          ModelOperation.CREATE,
          ModelOperation.UPDATE,
          ModelOperation.DELETE,
          ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Account.ACCOUNT_NAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Account.ACCOUNT_TYPE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Account.ACCOUNT_OWNER,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Account.CREDIT_LIMIT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
  });
}

class _AccountModelType extends ModelType<Account> {
  const _AccountModelType();
  
  @override
  Account fromJson(Map<String, dynamic> jsonData) {
    return Account.fromJson(jsonData);
  }
}