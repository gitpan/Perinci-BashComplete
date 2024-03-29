
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
  "dist_version" => "0.31",
  "license" => "perl",
  "module_name" => "Perinci::BashComplete",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "List::MoreUtils" => 0,
    "Log::Any" => 0,
    "Perinci::Sub::GetArgs::Argv" => "0.13",
    "Rinci" => "v1.1.10",
    "UUID::Random" => 0,
    "perl" => "5.010001"
  },
  "script_files" => [],
  "test_requires" => {
    "Capture::Tiny" => 0,
    "File::Which" => 0,
    "File::chdir" => 0,
    "Perinci::Access" => 0,
    "Perinci::Examples" => "0.08",
    "Test::More" => "0.88",
    "blib" => 0
  }
);


unless ( eval { Module::Build->VERSION(0.4004) } ) {
  my $tr = delete $module_build_args{test_requires};
  my $br = $module_build_args{build_requires};
  for my $mod ( keys %$tr ) {
    if ( exists $br->{$mod} ) {
      $br->{$mod} = $tr->{$mod} if $tr->{$mod} > $br->{$mod};
    }
    else {
      $br->{$mod} = $tr->{$mod};
    }
  }
}

my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
