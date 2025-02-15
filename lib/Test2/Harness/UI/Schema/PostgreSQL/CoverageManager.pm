use utf8;
package Test2::Harness::UI::Schema::Result::CoverageManager;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';
__PACKAGE__->load_components(
  "InflateColumn::DateTime",
  "InflateColumn::Serializer",
  "InflateColumn::Serializer::JSON",
  "Tree::AdjacencyList",
  "UUIDColumns",
);
__PACKAGE__->table("coverage_manager");
__PACKAGE__->add_columns(
  "coverage_manager_id",
  { data_type => "uuid", is_nullable => 0, size => 16 },
  "package",
  { data_type => "varchar", is_nullable => 0, size => 256 },
);
__PACKAGE__->set_primary_key("coverage_manager_id");
__PACKAGE__->add_unique_constraint("coverage_manager_package_key", ["package"]);
__PACKAGE__->has_many(
  "coverages",
  "Test2::Harness::UI::Schema::Result::Coverage",
  { "foreign.coverage_manager_id" => "self.coverage_manager_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2022-10-04 15:02:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:XOlk5RxET66VOeUsbvpiCA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
