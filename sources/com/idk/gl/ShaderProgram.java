package com.idk.gl;

import android.opengl.GLES20;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.StringWriter;
import java.nio.Buffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ShaderProgram extends GLES20 {
    private int drawType;
    private int fragId;
    public String fragment_code;
    private int programID;
    private int vertexId;
    private String vertex_code;
    private boolean hasError = false;
    private HashMap<String, Integer> attribute_location = new HashMap<>();
    private HashMap<String, Integer> uniform_location = new HashMap<>();
    private List<String> attribute_list = new ArrayList();
    private List<String> uniform_list = new ArrayList();
    private List<String> errors = new ArrayList();

    public enum DrawType {
        TRIANGLE,
        LINE,
        POINT
    }

    public ShaderProgram(String vert, String frag) {
        this.drawType = 0;
        this.vertex_code = vert;
        this.fragment_code = frag;
        this.drawType = 4;
    }

    public ShaderProgram(InputStream vert, InputStream frag) {
        this.drawType = 0;
        this.vertex_code = readInput(vert);
        this.fragment_code = readInput(frag);
        this.drawType = 4;
    }

    private String readInput(InputStream in) {
        try {
            BufferedReader bis = new BufferedReader(new InputStreamReader(in));
            StringWriter write = new StringWriter();
            char[] arr = new char[1024];
            while (true) {
                int i = bis.read(arr);
                if (i != -1) {
                    write.append((CharSequence) new String(arr, 0, i));
                } else {
                    return write.toString();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public void compile() {
        this.programID = glCreateProgram();
        int vertexId = glCreateShader(35633);
        int fragId = glCreateShader(35632);
        glShaderSource(vertexId, this.vertex_code);
        glShaderSource(fragId, this.fragment_code);
        glCompileShader(vertexId);
        int[] compileStatus = new int[1];
        GLES20.glGetShaderiv(vertexId, 35713, compileStatus, 0);
        if (compileStatus[0] != 1) {
            String error = GLES20.glGetShaderInfoLog(vertexId);
            this.errors.add("Vertex: " + error);
        }
        glCompileShader(fragId);
        int[] compileStatus1 = new int[1];
        GLES20.glGetShaderiv(fragId, 35713, compileStatus1, 0);
        if (compileStatus1[0] != 1) {
            String error2 = GLES20.glGetShaderInfoLog(fragId);
            this.errors.add("Fragment: " + error2);
        }
        if (!this.errors.isEmpty()) {
            this.hasError = true;
            return;
        }
        glAttachShader(this.programID, vertexId);
        glAttachShader(this.programID, fragId);
        glLinkProgram(this.programID);
        bind();
        int[] numActiveAttribs = new int[1];
        glGetProgramiv(this.programID, 35721, numActiveAttribs, 0);
        for (int i = 0; i < numActiveAttribs[0]; i++) {
            int[] size = {1};
            int[] type = {1};
            String attributeName = glGetActiveAttrib(this.programID, i, size, 0, type, 0);
            this.attribute_list.add(attributeName);
        }
        int[] numActiveUniforms = new int[1];
        glGetProgramiv(this.programID, 35718, numActiveUniforms, 0);
        for (int i2 = 0; i2 < numActiveUniforms[0]; i2++) {
            byte[] name = new byte[1024];
            glGetActiveUniform(this.programID, i2, 1024, null, 0, new int[1], 0, new int[1], 0, name, 0);
            String uniformName = new String(name);
            this.uniform_list.add(uniformName.trim());
        }
        for (String s : this.attribute_list) {
            this.attribute_location.put(s, Integer.valueOf(glGetAttribLocation(this.programID, s)));
        }
        for (String s2 : this.uniform_list) {
            this.uniform_location.put(s2, Integer.valueOf(glGetUniformLocation(this.programID, s2)));
        }
        glDeleteShader(vertexId);
        glDeleteShader(fragId);
    }

    public void setAttributeFloatBuffer(String id, FloatBuffer buffer, int size) {
        Object obj = this.attribute_location.get(id);
        if (obj != null) {
            int i = ((Integer) obj).intValue();
            glEnableVertexAttribArray(i);
            glVertexAttribPointer(i, size, 5126, false, size * 4, (Buffer) buffer);
        }
    }

    public void setAttributeBuffer(String id, VertexBufferObject vbo, int size) {
        Object obj = this.attribute_location.get(id);
        if (obj != null) {
            int d = ((Integer) obj).intValue();
            vbo.bind();
            glEnableVertexAttribArray(d);
            glVertexAttribPointer(d, size, vbo.data_type, false, vbo.data_size * size, 0);
            vbo.unbind();
        }
    }

    public void setAttributeIntBuffer(String id, IntBuffer buffer, int size) {
        Object obj = this.attribute_location.get(id);
        if (obj != null) {
            int i = ((Integer) obj).intValue();
            glEnableVertexAttribArray(i);
            glVertexAttribPointer(i, size, 5125, false, size * 4, (Buffer) buffer);
        }
    }

    public void setDrawType(int i) {
        this.drawType = i;
    }

    public void setDrawType(DrawType type) {
        if (type == DrawType.TRIANGLE) {
            setDrawType(4);
        } else if (type == DrawType.LINE) {
            setDrawType(1);
        } else if (type == DrawType.POINT) {
            setDrawType(0);
        }
    }

    public void draw(IntBuffer buffer) {
        buffer.position(0);
        glDrawElements(this.drawType, buffer.remaining(), 5125, buffer);
    }

    public void draw(IntBuffer buffer, int size) {
        glDrawElements(this.drawType, size, 5125, buffer);
    }

    public void draw(ShortBuffer buffer) {
        glDrawElements(this.drawType, buffer.limit(), 5123, buffer);
    }

    public void draw(VertexBufferObject buffer) {
        buffer.bind();
        glDrawElements(this.drawType, buffer.buffer_size, buffer.data_type, 0);
        VertexBufferObject.unbind(34963);
    }

    public int getUniformId(String s) {
        return glGetUniformLocation(this.programID, s);
    }

    public void setMatrix(String id, float[] val) {
        Object obj = this.uniform_location.get(id);
        if (obj != null) {
            glUniformMatrix4fv(((Integer) obj).intValue(), 1, false, val, 0);
            return;
        }
        int i = glGetUniformLocation(this.programID, id);
        if (i != -1) {
            this.uniform_location.put(id, Integer.valueOf(i));
            glUniformMatrix4fv(i, 1, false, val, 0);
        }
    }

    public void setMatrixArray(String id, List<float[]> val) {
        for (int i = 0; i < val.size(); i++) {
            int handle = glGetUniformLocation(this.programID, id + "[" + i + "]");
            glUniformMatrix4fv(handle, 1, false, val.get(i), 0);
        }
    }

    public void setInt(String id, int val) {
        Object obj = this.uniform_location.get(id);
        if (obj != null) {
            int i = ((Integer) obj).intValue();
            glUniform1i(i, val);
        }
    }

    public void setFloat(String id, float val) {
        Object obj = this.uniform_location.get(id);
        if (obj != null) {
            int i = ((Integer) obj).intValue();
            glUniform1f(i, val);
        }
    }

    public void setVector3(String id, float[] val) {
        Object obj = this.uniform_location.get(id);
        if (obj != null) {
            int i = ((Integer) obj).intValue();
            glUniform3fv(i, 1, val, 0);
        }
    }

    public void setVector4(String id, float[] val) {
        Object obj = this.uniform_location.get(id);
        if (obj != null) {
            int i = ((Integer) obj).intValue();
            glUniform4fv(i, 1, val, 0);
        }
    }

    public void setVector2(String id, float[] val) {
        Object obj = this.uniform_location.get(id);
        if (obj != null) {
            int i = ((Integer) obj).intValue();
            glUniform2fv(i, 1, val, 0);
        }
    }

    public void bind() {
        glUseProgram(this.programID);
    }

    public void unbind() {
        glUseProgram(0);
    }

    public void printError() {
        if (this.hasError) {
            for (String e : this.errors) {
                System.out.println(e);
            }
        }
    }

    public void close() {
        glDeleteShader(this.vertexId);
        glDeleteShader(this.fragId);
        glDeleteProgram(this.programID);
    }

    public void setLineSize(float size) {
        glLineWidth(size);
    }

    public List<String> getUniformList() {
        List<String> list = new ArrayList<>(this.uniform_list);
        return list;
    }

    public List<String> getAttributeList() {
        return new ArrayList(this.attribute_list);
    }
}
