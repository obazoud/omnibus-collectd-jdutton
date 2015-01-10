#
# Copyright:: Copyright (c) 2015 Olivier Bazoud
# License:: Apache License, Version 2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
name "libdbi"
default_version "0.8.4"

source :url => "http://heanet.dl.sourceforge.net/project/libdbi/libdbi/libdbi-#{version}/libdbi-#{version}.tar.gz",
       :md5 => "c5f15407ef7b07ba854cd8c9b15b88ff"

relative_path "libdbi-#{version}"

env = {
  "LDFLAGS" => "-L#{install_dir}/embedded/lib -I#{install_dir}/embedded/include",
  "CFLAGS" => "-L#{install_dir}/embedded/lib -I#{install_dir}/embedded/include",
  "LD_RUN_PATH" => "#{install_dir}/embedded/lib",
  "PATH" => "#{install_dir}/embedded/bin:#{ENV['PATH']}",
}

build do
  command [
            "./configure --disable-docs",
            "--prefix=#{install_dir}/embedded",
           ].join(" "), :env => env

  command "make -j #{workers}", :env => env
  command "make install", :env => env
end