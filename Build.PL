
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "Module::Build" => "0.3601"
  },
  "configure_requires" => {
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "Bash completion routines for function & function argument over Riap",
  "dist_author" => [
    "Steven Haryanto <stevenharyanto\@gmail.com>"
  ],
  "dist_name" => "Perinci-BashComplete",
  "dist_version" => "0.25",
  "license" => "perl",
  "module_name" => "Perinci::BashComplete",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Data::Sah" => "0.02",
    "File::Which" => 0,
    "Log::Any" => 0,
    "Perinci::Access" => "0.03",
    "Perinci::Examples" => "0.08",
    "Perinci::Sub::GetArgs::Argv" => "0.12",
    "Rinci" => "1.1.10",
    "UUID::Random" => 0,
    "perl" => "5.010000"
  },
  "script_files" => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
