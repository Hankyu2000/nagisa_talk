// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $StudentRecordsTable extends StudentRecords
    with TableInfo<$StudentRecordsTable, StudentRecord> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $StudentRecordsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _uuidMeta = const VerificationMeta('uuid');
  @override
  late final GeneratedColumn<String> uuid = GeneratedColumn<String>(
      'uuid', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _schoolNameMeta =
      const VerificationMeta('schoolName');
  @override
  late final GeneratedColumn<String> schoolName = GeneratedColumn<String>(
      'school_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _imagePathMeta =
      const VerificationMeta('imagePath');
  @override
  late final GeneratedColumn<String> imagePath = GeneratedColumn<String>(
      'image_path', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, uuid, schoolName, imagePath];
  @override
  String get aliasedName => _alias ?? 'student_records';
  @override
  String get actualTableName => 'student_records';
  @override
  VerificationContext validateIntegrity(Insertable<StudentRecord> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('uuid')) {
      context.handle(
          _uuidMeta, uuid.isAcceptableOrUnknown(data['uuid']!, _uuidMeta));
    } else if (isInserting) {
      context.missing(_uuidMeta);
    }
    if (data.containsKey('school_name')) {
      context.handle(
          _schoolNameMeta,
          schoolName.isAcceptableOrUnknown(
              data['school_name']!, _schoolNameMeta));
    } else if (isInserting) {
      context.missing(_schoolNameMeta);
    }
    if (data.containsKey('image_path')) {
      context.handle(_imagePathMeta,
          imagePath.isAcceptableOrUnknown(data['image_path']!, _imagePathMeta));
    } else if (isInserting) {
      context.missing(_imagePathMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  StudentRecord map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return StudentRecord(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      uuid: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}uuid'])!,
      schoolName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}school_name'])!,
      imagePath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image_path'])!,
    );
  }

  @override
  $StudentRecordsTable createAlias(String alias) {
    return $StudentRecordsTable(attachedDatabase, alias);
  }
}

class StudentRecord extends DataClass implements Insertable<StudentRecord> {
  final int id;
  final String uuid;
  final String schoolName;
  final String imagePath;
  const StudentRecord(
      {required this.id,
      required this.uuid,
      required this.schoolName,
      required this.imagePath});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['uuid'] = Variable<String>(uuid);
    map['school_name'] = Variable<String>(schoolName);
    map['image_path'] = Variable<String>(imagePath);
    return map;
  }

  StudentRecordsCompanion toCompanion(bool nullToAbsent) {
    return StudentRecordsCompanion(
      id: Value(id),
      uuid: Value(uuid),
      schoolName: Value(schoolName),
      imagePath: Value(imagePath),
    );
  }

  factory StudentRecord.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return StudentRecord(
      id: serializer.fromJson<int>(json['id']),
      uuid: serializer.fromJson<String>(json['uuid']),
      schoolName: serializer.fromJson<String>(json['schoolName']),
      imagePath: serializer.fromJson<String>(json['imagePath']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'uuid': serializer.toJson<String>(uuid),
      'schoolName': serializer.toJson<String>(schoolName),
      'imagePath': serializer.toJson<String>(imagePath),
    };
  }

  StudentRecord copyWith(
          {int? id, String? uuid, String? schoolName, String? imagePath}) =>
      StudentRecord(
        id: id ?? this.id,
        uuid: uuid ?? this.uuid,
        schoolName: schoolName ?? this.schoolName,
        imagePath: imagePath ?? this.imagePath,
      );
  @override
  String toString() {
    return (StringBuffer('StudentRecord(')
          ..write('id: $id, ')
          ..write('uuid: $uuid, ')
          ..write('schoolName: $schoolName, ')
          ..write('imagePath: $imagePath')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, uuid, schoolName, imagePath);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is StudentRecord &&
          other.id == this.id &&
          other.uuid == this.uuid &&
          other.schoolName == this.schoolName &&
          other.imagePath == this.imagePath);
}

class StudentRecordsCompanion extends UpdateCompanion<StudentRecord> {
  final Value<int> id;
  final Value<String> uuid;
  final Value<String> schoolName;
  final Value<String> imagePath;
  const StudentRecordsCompanion({
    this.id = const Value.absent(),
    this.uuid = const Value.absent(),
    this.schoolName = const Value.absent(),
    this.imagePath = const Value.absent(),
  });
  StudentRecordsCompanion.insert({
    this.id = const Value.absent(),
    required String uuid,
    required String schoolName,
    required String imagePath,
  })  : uuid = Value(uuid),
        schoolName = Value(schoolName),
        imagePath = Value(imagePath);
  static Insertable<StudentRecord> custom({
    Expression<int>? id,
    Expression<String>? uuid,
    Expression<String>? schoolName,
    Expression<String>? imagePath,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (uuid != null) 'uuid': uuid,
      if (schoolName != null) 'school_name': schoolName,
      if (imagePath != null) 'image_path': imagePath,
    });
  }

  StudentRecordsCompanion copyWith(
      {Value<int>? id,
      Value<String>? uuid,
      Value<String>? schoolName,
      Value<String>? imagePath}) {
    return StudentRecordsCompanion(
      id: id ?? this.id,
      uuid: uuid ?? this.uuid,
      schoolName: schoolName ?? this.schoolName,
      imagePath: imagePath ?? this.imagePath,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (uuid.present) {
      map['uuid'] = Variable<String>(uuid.value);
    }
    if (schoolName.present) {
      map['school_name'] = Variable<String>(schoolName.value);
    }
    if (imagePath.present) {
      map['image_path'] = Variable<String>(imagePath.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('StudentRecordsCompanion(')
          ..write('id: $id, ')
          ..write('uuid: $uuid, ')
          ..write('schoolName: $schoolName, ')
          ..write('imagePath: $imagePath')
          ..write(')'))
        .toString();
  }
}

class $MessageRecordsTable extends MessageRecords
    with TableInfo<$MessageRecordsTable, MessageRecord> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MessageRecordsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _messageUuidMeta =
      const VerificationMeta('messageUuid');
  @override
  late final GeneratedColumn<String> messageUuid = GeneratedColumn<String>(
      'message_uuid', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _senderStudentUuidMeta =
      const VerificationMeta('senderStudentUuid');
  @override
  late final GeneratedColumn<String> senderStudentUuid =
      GeneratedColumn<String>('sender_student_uuid', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _isImageMeta =
      const VerificationMeta('isImage');
  @override
  late final GeneratedColumn<bool> isImage =
      GeneratedColumn<bool>('is_image', aliasedName, false,
          type: DriftSqlType.bool,
          requiredDuringInsert: true,
          defaultConstraints: GeneratedColumn.constraintsDependsOnDialect({
            SqlDialect.sqlite: 'CHECK ("is_image" IN (0, 1))',
            SqlDialect.mysql: '',
            SqlDialect.postgres: '',
          }));
  static const VerificationMeta _textContentMeta =
      const VerificationMeta('textContent');
  @override
  late final GeneratedColumn<String> textContent = GeneratedColumn<String>(
      'text_content', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _imageContentInBase64Meta =
      const VerificationMeta('imageContentInBase64');
  @override
  late final GeneratedColumn<String> imageContentInBase64 =
      GeneratedColumn<String>('image_content_in_base64', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        messageUuid,
        senderStudentUuid,
        isImage,
        textContent,
        imageContentInBase64
      ];
  @override
  String get aliasedName => _alias ?? 'message_records';
  @override
  String get actualTableName => 'message_records';
  @override
  VerificationContext validateIntegrity(Insertable<MessageRecord> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('message_uuid')) {
      context.handle(
          _messageUuidMeta,
          messageUuid.isAcceptableOrUnknown(
              data['message_uuid']!, _messageUuidMeta));
    } else if (isInserting) {
      context.missing(_messageUuidMeta);
    }
    if (data.containsKey('sender_student_uuid')) {
      context.handle(
          _senderStudentUuidMeta,
          senderStudentUuid.isAcceptableOrUnknown(
              data['sender_student_uuid']!, _senderStudentUuidMeta));
    } else if (isInserting) {
      context.missing(_senderStudentUuidMeta);
    }
    if (data.containsKey('is_image')) {
      context.handle(_isImageMeta,
          isImage.isAcceptableOrUnknown(data['is_image']!, _isImageMeta));
    } else if (isInserting) {
      context.missing(_isImageMeta);
    }
    if (data.containsKey('text_content')) {
      context.handle(
          _textContentMeta,
          textContent.isAcceptableOrUnknown(
              data['text_content']!, _textContentMeta));
    }
    if (data.containsKey('image_content_in_base64')) {
      context.handle(
          _imageContentInBase64Meta,
          imageContentInBase64.isAcceptableOrUnknown(
              data['image_content_in_base64']!, _imageContentInBase64Meta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MessageRecord map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MessageRecord(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      messageUuid: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}message_uuid'])!,
      senderStudentUuid: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}sender_student_uuid'])!,
      isImage: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_image'])!,
      textContent: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}text_content']),
      imageContentInBase64: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}image_content_in_base64']),
    );
  }

  @override
  $MessageRecordsTable createAlias(String alias) {
    return $MessageRecordsTable(attachedDatabase, alias);
  }
}

class MessageRecord extends DataClass implements Insertable<MessageRecord> {
  final int id;
  final String messageUuid;
  final String senderStudentUuid;
  final bool isImage;
  final String? textContent;
  final String? imageContentInBase64;
  const MessageRecord(
      {required this.id,
      required this.messageUuid,
      required this.senderStudentUuid,
      required this.isImage,
      this.textContent,
      this.imageContentInBase64});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['message_uuid'] = Variable<String>(messageUuid);
    map['sender_student_uuid'] = Variable<String>(senderStudentUuid);
    map['is_image'] = Variable<bool>(isImage);
    if (!nullToAbsent || textContent != null) {
      map['text_content'] = Variable<String>(textContent);
    }
    if (!nullToAbsent || imageContentInBase64 != null) {
      map['image_content_in_base64'] = Variable<String>(imageContentInBase64);
    }
    return map;
  }

  MessageRecordsCompanion toCompanion(bool nullToAbsent) {
    return MessageRecordsCompanion(
      id: Value(id),
      messageUuid: Value(messageUuid),
      senderStudentUuid: Value(senderStudentUuid),
      isImage: Value(isImage),
      textContent: textContent == null && nullToAbsent
          ? const Value.absent()
          : Value(textContent),
      imageContentInBase64: imageContentInBase64 == null && nullToAbsent
          ? const Value.absent()
          : Value(imageContentInBase64),
    );
  }

  factory MessageRecord.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MessageRecord(
      id: serializer.fromJson<int>(json['id']),
      messageUuid: serializer.fromJson<String>(json['messageUuid']),
      senderStudentUuid: serializer.fromJson<String>(json['senderStudentUuid']),
      isImage: serializer.fromJson<bool>(json['isImage']),
      textContent: serializer.fromJson<String?>(json['textContent']),
      imageContentInBase64:
          serializer.fromJson<String?>(json['imageContentInBase64']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'messageUuid': serializer.toJson<String>(messageUuid),
      'senderStudentUuid': serializer.toJson<String>(senderStudentUuid),
      'isImage': serializer.toJson<bool>(isImage),
      'textContent': serializer.toJson<String?>(textContent),
      'imageContentInBase64': serializer.toJson<String?>(imageContentInBase64),
    };
  }

  MessageRecord copyWith(
          {int? id,
          String? messageUuid,
          String? senderStudentUuid,
          bool? isImage,
          Value<String?> textContent = const Value.absent(),
          Value<String?> imageContentInBase64 = const Value.absent()}) =>
      MessageRecord(
        id: id ?? this.id,
        messageUuid: messageUuid ?? this.messageUuid,
        senderStudentUuid: senderStudentUuid ?? this.senderStudentUuid,
        isImage: isImage ?? this.isImage,
        textContent: textContent.present ? textContent.value : this.textContent,
        imageContentInBase64: imageContentInBase64.present
            ? imageContentInBase64.value
            : this.imageContentInBase64,
      );
  @override
  String toString() {
    return (StringBuffer('MessageRecord(')
          ..write('id: $id, ')
          ..write('messageUuid: $messageUuid, ')
          ..write('senderStudentUuid: $senderStudentUuid, ')
          ..write('isImage: $isImage, ')
          ..write('textContent: $textContent, ')
          ..write('imageContentInBase64: $imageContentInBase64')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, messageUuid, senderStudentUuid, isImage,
      textContent, imageContentInBase64);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MessageRecord &&
          other.id == this.id &&
          other.messageUuid == this.messageUuid &&
          other.senderStudentUuid == this.senderStudentUuid &&
          other.isImage == this.isImage &&
          other.textContent == this.textContent &&
          other.imageContentInBase64 == this.imageContentInBase64);
}

class MessageRecordsCompanion extends UpdateCompanion<MessageRecord> {
  final Value<int> id;
  final Value<String> messageUuid;
  final Value<String> senderStudentUuid;
  final Value<bool> isImage;
  final Value<String?> textContent;
  final Value<String?> imageContentInBase64;
  const MessageRecordsCompanion({
    this.id = const Value.absent(),
    this.messageUuid = const Value.absent(),
    this.senderStudentUuid = const Value.absent(),
    this.isImage = const Value.absent(),
    this.textContent = const Value.absent(),
    this.imageContentInBase64 = const Value.absent(),
  });
  MessageRecordsCompanion.insert({
    this.id = const Value.absent(),
    required String messageUuid,
    required String senderStudentUuid,
    required bool isImage,
    this.textContent = const Value.absent(),
    this.imageContentInBase64 = const Value.absent(),
  })  : messageUuid = Value(messageUuid),
        senderStudentUuid = Value(senderStudentUuid),
        isImage = Value(isImage);
  static Insertable<MessageRecord> custom({
    Expression<int>? id,
    Expression<String>? messageUuid,
    Expression<String>? senderStudentUuid,
    Expression<bool>? isImage,
    Expression<String>? textContent,
    Expression<String>? imageContentInBase64,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (messageUuid != null) 'message_uuid': messageUuid,
      if (senderStudentUuid != null) 'sender_student_uuid': senderStudentUuid,
      if (isImage != null) 'is_image': isImage,
      if (textContent != null) 'text_content': textContent,
      if (imageContentInBase64 != null)
        'image_content_in_base64': imageContentInBase64,
    });
  }

  MessageRecordsCompanion copyWith(
      {Value<int>? id,
      Value<String>? messageUuid,
      Value<String>? senderStudentUuid,
      Value<bool>? isImage,
      Value<String?>? textContent,
      Value<String?>? imageContentInBase64}) {
    return MessageRecordsCompanion(
      id: id ?? this.id,
      messageUuid: messageUuid ?? this.messageUuid,
      senderStudentUuid: senderStudentUuid ?? this.senderStudentUuid,
      isImage: isImage ?? this.isImage,
      textContent: textContent ?? this.textContent,
      imageContentInBase64: imageContentInBase64 ?? this.imageContentInBase64,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (messageUuid.present) {
      map['message_uuid'] = Variable<String>(messageUuid.value);
    }
    if (senderStudentUuid.present) {
      map['sender_student_uuid'] = Variable<String>(senderStudentUuid.value);
    }
    if (isImage.present) {
      map['is_image'] = Variable<bool>(isImage.value);
    }
    if (textContent.present) {
      map['text_content'] = Variable<String>(textContent.value);
    }
    if (imageContentInBase64.present) {
      map['image_content_in_base64'] =
          Variable<String>(imageContentInBase64.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MessageRecordsCompanion(')
          ..write('id: $id, ')
          ..write('messageUuid: $messageUuid, ')
          ..write('senderStudentUuid: $senderStudentUuid, ')
          ..write('isImage: $isImage, ')
          ..write('textContent: $textContent, ')
          ..write('imageContentInBase64: $imageContentInBase64')
          ..write(')'))
        .toString();
  }
}

class $ConversationRecordsTable extends ConversationRecords
    with TableInfo<$ConversationRecordsTable, ConversationRecord> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ConversationRecordsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _conversationUuidMeta =
      const VerificationMeta('conversationUuid');
  @override
  late final GeneratedColumn<String> conversationUuid = GeneratedColumn<String>(
      'conversation_uuid', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  @override
  List<GeneratedColumn> get $columns => [id, conversationUuid];
  @override
  String get aliasedName => _alias ?? 'conversation_records';
  @override
  String get actualTableName => 'conversation_records';
  @override
  VerificationContext validateIntegrity(Insertable<ConversationRecord> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('conversation_uuid')) {
      context.handle(
          _conversationUuidMeta,
          conversationUuid.isAcceptableOrUnknown(
              data['conversation_uuid']!, _conversationUuidMeta));
    } else if (isInserting) {
      context.missing(_conversationUuidMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ConversationRecord map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ConversationRecord(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      conversationUuid: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}conversation_uuid'])!,
    );
  }

  @override
  $ConversationRecordsTable createAlias(String alias) {
    return $ConversationRecordsTable(attachedDatabase, alias);
  }
}

class ConversationRecord extends DataClass
    implements Insertable<ConversationRecord> {
  final int id;
  final String conversationUuid;
  const ConversationRecord({required this.id, required this.conversationUuid});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['conversation_uuid'] = Variable<String>(conversationUuid);
    return map;
  }

  ConversationRecordsCompanion toCompanion(bool nullToAbsent) {
    return ConversationRecordsCompanion(
      id: Value(id),
      conversationUuid: Value(conversationUuid),
    );
  }

  factory ConversationRecord.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ConversationRecord(
      id: serializer.fromJson<int>(json['id']),
      conversationUuid: serializer.fromJson<String>(json['conversationUuid']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'conversationUuid': serializer.toJson<String>(conversationUuid),
    };
  }

  ConversationRecord copyWith({int? id, String? conversationUuid}) =>
      ConversationRecord(
        id: id ?? this.id,
        conversationUuid: conversationUuid ?? this.conversationUuid,
      );
  @override
  String toString() {
    return (StringBuffer('ConversationRecord(')
          ..write('id: $id, ')
          ..write('conversationUuid: $conversationUuid')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, conversationUuid);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ConversationRecord &&
          other.id == this.id &&
          other.conversationUuid == this.conversationUuid);
}

class ConversationRecordsCompanion extends UpdateCompanion<ConversationRecord> {
  final Value<int> id;
  final Value<String> conversationUuid;
  const ConversationRecordsCompanion({
    this.id = const Value.absent(),
    this.conversationUuid = const Value.absent(),
  });
  ConversationRecordsCompanion.insert({
    this.id = const Value.absent(),
    required String conversationUuid,
  }) : conversationUuid = Value(conversationUuid);
  static Insertable<ConversationRecord> custom({
    Expression<int>? id,
    Expression<String>? conversationUuid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (conversationUuid != null) 'conversation_uuid': conversationUuid,
    });
  }

  ConversationRecordsCompanion copyWith(
      {Value<int>? id, Value<String>? conversationUuid}) {
    return ConversationRecordsCompanion(
      id: id ?? this.id,
      conversationUuid: conversationUuid ?? this.conversationUuid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (conversationUuid.present) {
      map['conversation_uuid'] = Variable<String>(conversationUuid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ConversationRecordsCompanion(')
          ..write('id: $id, ')
          ..write('conversationUuid: $conversationUuid')
          ..write(')'))
        .toString();
  }
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(e);
  late final $StudentRecordsTable studentRecords = $StudentRecordsTable(this);
  late final $MessageRecordsTable messageRecords = $MessageRecordsTable(this);
  late final $ConversationRecordsTable conversationRecords =
      $ConversationRecordsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [studentRecords, messageRecords, conversationRecords];
}
