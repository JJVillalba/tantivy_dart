#![allow(
    non_camel_case_types,
    unused,
    clippy::redundant_closure,
    clippy::useless_conversion
)]
// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`.

use crate::api::*;
use flutter_rust_bridge::*;

// Section: wire functions

#[no_mangle]
pub extern "C" fn wire_binding_test(port: i64, string: *mut wire_uint_8_list) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "binding_test",
            port: Some(port),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_string = string.wire2api();
            move |task_callback| binding_test(api_string)
        },
    )
}

#[no_mangle]
pub extern "C" fn wire_set_up(port: i64) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "set_up",
            port: Some(port),
            mode: FfiCallMode::Normal,
        },
        move || move |task_callback| set_up(),
    )
}

#[no_mangle]
pub extern "C" fn wire_open_or_create_index(port: i64, schema: *mut wire_Schema) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "open_or_create_index",
            port: Some(port),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_schema = schema.wire2api();
            move |task_callback| open_or_create_index(api_schema)
        },
    )
}

#[no_mangle]
pub extern "C" fn wire_index_documents(port: i64, documents: *mut wire_list_document) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "index_documents",
            port: Some(port),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_documents = documents.wire2api();
            move |task_callback| index_documents(api_documents)
        },
    )
}

#[no_mangle]
pub extern "C" fn wire_search(port: i64, query: *mut wire_SearchQuery) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "search",
            port: Some(port),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_query = query.wire2api();
            move |task_callback| search(api_query)
        },
    )
}

// Section: wire structs

#[repr(C)]
#[derive(Clone)]
pub struct wire_StringList {
    ptr: *mut *mut wire_uint_8_list,
    len: i32,
}

#[repr(C)]
#[derive(Clone)]
pub struct wire_Document {
    index_name: *mut wire_uint_8_list,
    document_fields: *mut wire_list_document_fields,
}

#[repr(C)]
#[derive(Clone)]
pub struct wire_DocumentFields {
    name: *mut wire_uint_8_list,
    field_type: *mut wire_uint_8_list,
    bytes: *mut wire_uint_8_list,
    text: *mut wire_uint_8_list,
    i64: *mut i64,
    f64: *mut f64,
}

#[repr(C)]
#[derive(Clone)]
pub struct wire_list_document {
    ptr: *mut wire_Document,
    len: i32,
}

#[repr(C)]
#[derive(Clone)]
pub struct wire_list_document_fields {
    ptr: *mut wire_DocumentFields,
    len: i32,
}

#[repr(C)]
#[derive(Clone)]
pub struct wire_list_schema_field {
    ptr: *mut wire_SchemaField,
    len: i32,
}

#[repr(C)]
#[derive(Clone)]
pub struct wire_Schema {
    path: *mut wire_uint_8_list,
    name: *mut wire_uint_8_list,
    fields: *mut wire_list_schema_field,
}

#[repr(C)]
#[derive(Clone)]
pub struct wire_SchemaField {
    name: *mut wire_uint_8_list,
    field_type: *mut wire_uint_8_list,
    index_record_option: *mut wire_uint_8_list,
    tokenizer_name: *mut wire_uint_8_list,
    is_stored: bool,
}

#[repr(C)]
#[derive(Clone)]
pub struct wire_SearchQuery {
    index_name: *mut wire_uint_8_list,
    search: *mut wire_uint_8_list,
    fields: *mut wire_StringList,
}

#[repr(C)]
#[derive(Clone)]
pub struct wire_uint_8_list {
    ptr: *mut u8,
    len: i32,
}

// Section: allocate functions

#[no_mangle]
pub extern "C" fn new_StringList(len: i32) -> *mut wire_StringList {
    let wrap = wire_StringList {
        ptr: support::new_leak_vec_ptr(<*mut wire_uint_8_list>::new_with_null_ptr(), len),
        len,
    };
    support::new_leak_box_ptr(wrap)
}

#[no_mangle]
pub extern "C" fn new_box_autoadd_f64(value: f64) -> *mut f64 {
    support::new_leak_box_ptr(value)
}

#[no_mangle]
pub extern "C" fn new_box_autoadd_i64(value: i64) -> *mut i64 {
    support::new_leak_box_ptr(value)
}

#[no_mangle]
pub extern "C" fn new_box_autoadd_schema() -> *mut wire_Schema {
    support::new_leak_box_ptr(wire_Schema::new_with_null_ptr())
}

#[no_mangle]
pub extern "C" fn new_box_autoadd_search_query() -> *mut wire_SearchQuery {
    support::new_leak_box_ptr(wire_SearchQuery::new_with_null_ptr())
}

#[no_mangle]
pub extern "C" fn new_list_document(len: i32) -> *mut wire_list_document {
    let wrap = wire_list_document {
        ptr: support::new_leak_vec_ptr(<wire_Document>::new_with_null_ptr(), len),
        len,
    };
    support::new_leak_box_ptr(wrap)
}

#[no_mangle]
pub extern "C" fn new_list_document_fields(len: i32) -> *mut wire_list_document_fields {
    let wrap = wire_list_document_fields {
        ptr: support::new_leak_vec_ptr(<wire_DocumentFields>::new_with_null_ptr(), len),
        len,
    };
    support::new_leak_box_ptr(wrap)
}

#[no_mangle]
pub extern "C" fn new_list_schema_field(len: i32) -> *mut wire_list_schema_field {
    let wrap = wire_list_schema_field {
        ptr: support::new_leak_vec_ptr(<wire_SchemaField>::new_with_null_ptr(), len),
        len,
    };
    support::new_leak_box_ptr(wrap)
}

#[no_mangle]
pub extern "C" fn new_uint_8_list(len: i32) -> *mut wire_uint_8_list {
    let ans = wire_uint_8_list {
        ptr: support::new_leak_vec_ptr(Default::default(), len),
        len,
    };
    support::new_leak_box_ptr(ans)
}

// Section: impl Wire2Api

pub trait Wire2Api<T> {
    fn wire2api(self) -> T;
}

impl<T, S> Wire2Api<Option<T>> for *mut S
where
    *mut S: Wire2Api<T>,
{
    fn wire2api(self) -> Option<T> {
        if self.is_null() {
            None
        } else {
            Some(self.wire2api())
        }
    }
}

impl Wire2Api<String> for *mut wire_uint_8_list {
    fn wire2api(self) -> String {
        let vec: Vec<u8> = self.wire2api();
        String::from_utf8_lossy(&vec).into_owned()
    }
}

impl Wire2Api<Vec<String>> for *mut wire_StringList {
    fn wire2api(self) -> Vec<String> {
        let vec = unsafe {
            let wrap = support::box_from_leak_ptr(self);
            support::vec_from_leak_ptr(wrap.ptr, wrap.len)
        };
        vec.into_iter().map(Wire2Api::wire2api).collect()
    }
}

impl Wire2Api<bool> for bool {
    fn wire2api(self) -> bool {
        self
    }
}

impl Wire2Api<f64> for *mut f64 {
    fn wire2api(self) -> f64 {
        let wrap = unsafe { support::box_from_leak_ptr(self) };
        (*wrap).wire2api().into()
    }
}

impl Wire2Api<i64> for *mut i64 {
    fn wire2api(self) -> i64 {
        let wrap = unsafe { support::box_from_leak_ptr(self) };
        (*wrap).wire2api().into()
    }
}

impl Wire2Api<Schema> for *mut wire_Schema {
    fn wire2api(self) -> Schema {
        let wrap = unsafe { support::box_from_leak_ptr(self) };
        (*wrap).wire2api().into()
    }
}

impl Wire2Api<SearchQuery> for *mut wire_SearchQuery {
    fn wire2api(self) -> SearchQuery {
        let wrap = unsafe { support::box_from_leak_ptr(self) };
        (*wrap).wire2api().into()
    }
}

impl Wire2Api<Document> for wire_Document {
    fn wire2api(self) -> Document {
        Document {
            index_name: self.index_name.wire2api(),
            document_fields: self.document_fields.wire2api(),
        }
    }
}

impl Wire2Api<DocumentFields> for wire_DocumentFields {
    fn wire2api(self) -> DocumentFields {
        DocumentFields {
            name: self.name.wire2api(),
            field_type: self.field_type.wire2api(),
            bytes: self.bytes.wire2api(),
            text: self.text.wire2api(),
            i64: self.i64.wire2api(),
            f64: self.f64.wire2api(),
        }
    }
}

impl Wire2Api<f64> for f64 {
    fn wire2api(self) -> f64 {
        self
    }
}

impl Wire2Api<i64> for i64 {
    fn wire2api(self) -> i64 {
        self
    }
}

impl Wire2Api<Vec<Document>> for *mut wire_list_document {
    fn wire2api(self) -> Vec<Document> {
        let vec = unsafe {
            let wrap = support::box_from_leak_ptr(self);
            support::vec_from_leak_ptr(wrap.ptr, wrap.len)
        };
        vec.into_iter().map(Wire2Api::wire2api).collect()
    }
}

impl Wire2Api<Vec<DocumentFields>> for *mut wire_list_document_fields {
    fn wire2api(self) -> Vec<DocumentFields> {
        let vec = unsafe {
            let wrap = support::box_from_leak_ptr(self);
            support::vec_from_leak_ptr(wrap.ptr, wrap.len)
        };
        vec.into_iter().map(Wire2Api::wire2api).collect()
    }
}

impl Wire2Api<Vec<SchemaField>> for *mut wire_list_schema_field {
    fn wire2api(self) -> Vec<SchemaField> {
        let vec = unsafe {
            let wrap = support::box_from_leak_ptr(self);
            support::vec_from_leak_ptr(wrap.ptr, wrap.len)
        };
        vec.into_iter().map(Wire2Api::wire2api).collect()
    }
}

impl Wire2Api<Schema> for wire_Schema {
    fn wire2api(self) -> Schema {
        Schema {
            path: self.path.wire2api(),
            name: self.name.wire2api(),
            fields: self.fields.wire2api(),
        }
    }
}

impl Wire2Api<SchemaField> for wire_SchemaField {
    fn wire2api(self) -> SchemaField {
        SchemaField {
            name: self.name.wire2api(),
            field_type: self.field_type.wire2api(),
            index_record_option: self.index_record_option.wire2api(),
            tokenizer_name: self.tokenizer_name.wire2api(),
            is_stored: self.is_stored.wire2api(),
        }
    }
}

impl Wire2Api<SearchQuery> for wire_SearchQuery {
    fn wire2api(self) -> SearchQuery {
        SearchQuery {
            index_name: self.index_name.wire2api(),
            search: self.search.wire2api(),
            fields: self.fields.wire2api(),
        }
    }
}

impl Wire2Api<u8> for u8 {
    fn wire2api(self) -> u8 {
        self
    }
}

impl Wire2Api<Vec<u8>> for *mut wire_uint_8_list {
    fn wire2api(self) -> Vec<u8> {
        unsafe {
            let wrap = support::box_from_leak_ptr(self);
            support::vec_from_leak_ptr(wrap.ptr, wrap.len)
        }
    }
}

// Section: impl NewWithNullPtr

pub trait NewWithNullPtr {
    fn new_with_null_ptr() -> Self;
}

impl<T> NewWithNullPtr for *mut T {
    fn new_with_null_ptr() -> Self {
        std::ptr::null_mut()
    }
}

impl NewWithNullPtr for wire_Document {
    fn new_with_null_ptr() -> Self {
        Self {
            index_name: std::ptr::null_mut(),
            document_fields: std::ptr::null_mut(),
        }
    }
}

impl NewWithNullPtr for wire_DocumentFields {
    fn new_with_null_ptr() -> Self {
        Self {
            name: std::ptr::null_mut(),
            field_type: std::ptr::null_mut(),
            bytes: std::ptr::null_mut(),
            text: std::ptr::null_mut(),
            i64: std::ptr::null_mut(),
            f64: std::ptr::null_mut(),
        }
    }
}

impl NewWithNullPtr for wire_Schema {
    fn new_with_null_ptr() -> Self {
        Self {
            path: std::ptr::null_mut(),
            name: std::ptr::null_mut(),
            fields: std::ptr::null_mut(),
        }
    }
}

impl NewWithNullPtr for wire_SchemaField {
    fn new_with_null_ptr() -> Self {
        Self {
            name: std::ptr::null_mut(),
            field_type: std::ptr::null_mut(),
            index_record_option: std::ptr::null_mut(),
            tokenizer_name: std::ptr::null_mut(),
            is_stored: Default::default(),
        }
    }
}

impl NewWithNullPtr for wire_SearchQuery {
    fn new_with_null_ptr() -> Self {
        Self {
            index_name: std::ptr::null_mut(),
            search: std::ptr::null_mut(),
            fields: std::ptr::null_mut(),
        }
    }
}

// Section: impl IntoDart

impl support::IntoDart for SearchResult {
    fn into_dart(self) -> support::DartCObject {
        vec![self.score.into_dart(), self.doc_result.into_dart()].into_dart()
    }
}
impl support::IntoDartExceptPrimitive for SearchResult {}

// Section: executor
support::lazy_static! {
    pub static ref FLUTTER_RUST_BRIDGE_HANDLER: support::DefaultHandler = Default::default();
}

// Section: sync execution mode utility

#[no_mangle]
pub extern "C" fn free_WireSyncReturnStruct(val: support::WireSyncReturnStruct) {
    unsafe {
        let _ = support::vec_from_leak_ptr(val.ptr, val.len);
    }
}