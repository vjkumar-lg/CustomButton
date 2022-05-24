# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `ronn` gem.
# Please instead update this file by running `bin/tapioca gem ronn`.

module Ronn
  class << self
    def new(filename, attributes = T.unsafe(nil), &block); end
    def release?; end
    def revision; end
    def version; end
  end
end

class Ronn::Document
  include ::Ronn::Utils

  def initialize(path = T.unsafe(nil), attributes = T.unsafe(nil), &block); end

  def basename(type = T.unsafe(nil)); end
  def convert(format); end
  def data; end
  def date; end
  def date=(_arg0); end
  def html; end
  def index; end
  def index=(_arg0); end
  def manual; end
  def manual=(_arg0); end
  def markdown; end
  def name; end
  def name=(_arg0); end
  def name?; end
  def organization; end
  def organization=(_arg0); end
  def path; end
  def path_for(type = T.unsafe(nil)); end
  def path_name; end
  def path_section; end
  def reference_name; end
  def section; end
  def section=(_arg0); end
  def section?; end
  def section_heads; end
  def sniff; end
  def styles; end
  def styles=(styles); end
  def tagline; end
  def tagline=(_arg0); end
  def title; end
  def title?; end
  def to_h; end
  def to_html; end
  def to_html_fragment(wrap_class = T.unsafe(nil)); end
  def to_json; end
  def to_markdown; end
  def to_roff; end
  def to_yaml; end
  def toc; end

  protected

  def html_filter_angle_quotes; end
  def html_filter_annotate_bare_links; end
  def html_filter_definition_lists; end
  def html_filter_heading_anchors; end
  def html_filter_inject_name_section; end
  def html_filter_manual_reference_links; end
  def input_html; end
  def markdown_filter_angle_quotes(markdown); end
  def markdown_filter_heading_anchors(markdown); end
  def markdown_filter_link_index(markdown); end
  def preprocess!; end
  def process_html!; end
  def process_markdown!; end
  def strip_heading(html); end
end

class Ronn::Index
  include ::Enumerable

  def initialize(path, &bk); end

  def <<(path); end
  def [](name); end
  def add_manual(manual); end
  def each(&bk); end
  def empty?; end
  def exist?; end
  def first; end
  def last; end
  def manual(path); end
  def manuals; end
  def path; end
  def read!(data); end
  def reference(name, path); end
  def references; end
  def relative_to_index(path); end
  def size; end
  def to_a; end
  def to_h; end
  def to_text; end

  class << self
    def [](path); end
    def index_path_for_file(file); end
  end
end

Ronn::REV = T.let(T.unsafe(nil), String)

class Ronn::Reference
  def initialize(index, name, location); end

  def location; end
  def manual?; end
  def name; end
  def path; end
  def relative?; end
  def remote?; end
  def ronn?; end
  def url; end
end

class Ronn::RoffFilter
  include ::Ronn::Utils

  def initialize(html, name, section, tagline, manual = T.unsafe(nil), version = T.unsafe(nil), date = T.unsafe(nil)); end

  def to_s; end

  protected

  def block_filter(node); end
  def comment(text); end
  def escape(text); end
  def inline_filter(node); end
  def macro(name, value = T.unsafe(nil)); end
  def normalize_whitespace!(node); end
  def previous(node); end
  def quote(text); end
  def remove_extraneous_elements!(doc); end
  def title_heading(name, section, tagline, manual, version, date); end
  def warn(text, *args); end
  def write(text); end
  def writeln(text); end
end

Ronn::RoffFilter::HTML_ROFF_ENTITIES = T.let(T.unsafe(nil), Hash)

class Ronn::Template < ::Mustache
  def initialize(document, style_path = T.unsafe(nil)); end

  def custom_title?; end
  def date; end
  def generator; end
  def inline_stylesheet(path, media = T.unsafe(nil)); end
  def manual; end
  def missing_styles; end
  def name; end
  def name_and_section?; end
  def organization; end
  def page_name; end
  def remote_stylesheet(name, media = T.unsafe(nil)); end
  def render(template = T.unsafe(nil)); end
  def section; end
  def section_heads; end
  def style_files; end
  def style_path; end
  def style_path=(_arg0); end
  def styles; end
  def stylesheet(path, media = T.unsafe(nil)); end
  def stylesheet_tags; end
  def stylesheets; end
  def tagline; end
  def tagline?; end
  def title; end
  def wrap_class_name; end
end

module Ronn::Utils
  def block_element?(name); end
  def child_of?(node, tag); end
  def empty_element?(name); end
  def html_element?(name); end
  def inline_element?(name); end
end

Ronn::Utils::HTML = T.let(T.unsafe(nil), Set)
Ronn::Utils::HTML_BLOCK = T.let(T.unsafe(nil), Set)
Ronn::Utils::HTML_EMPTY = T.let(T.unsafe(nil), Set)
Ronn::Utils::HTML_INLINE = T.let(T.unsafe(nil), Set)
Ronn::VERSION = T.let(T.unsafe(nil), String)