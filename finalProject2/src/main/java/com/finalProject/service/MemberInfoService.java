package com.finalProject.service;

import java.util.List;
import java.util.Map;
import java.util.Optional;

import javax.persistence.EntityNotFoundException;
import javax.transaction.Transactional;

import org.apache.catalina.security.SecurityUtil;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.finalProject.dto.MemberInfoDTO;
import com.finalProject.entity.MemberInfo;
import com.finalProject.repository.MemberInfoRepository;

import lombok.RequiredArgsConstructor;


@Service
//@Transactional 클래스안에 메서드들 중 한개라도 작동이 안되면 전체 메서드를 롤백한다.
//보통 서비스 할 때 Transactional을 씀
@Transactional
//@RequiredArgsConstructor : not null, final이 붙은 멤버도 생성자로 생성해달라. 롬복 라이브러리에 있는 에너테이션
@RequiredArgsConstructor
public class MemberInfoService implements UserDetailsService {
	
    private final MemberInfoRepository memberInfoRepository;
    
    public MemberInfo saveMemberInfo(MemberInfo memberInfo){
    	//validateDuplicateMember 일단 뺌
    	//validateDuplicateMember(memberInfo);
        return memberInfoRepository.save(memberInfo);
    }
    
    private void validateDuplicateMember(MemberInfo memberInfo){
    	MemberInfo findMemberInfo = memberInfoRepository.findByEmail(memberInfo.getEmail());
        if(findMemberInfo != null){
            throw new IllegalStateException("이미 가입된 회원입니다.");
        }
    }
    
	@Override
	public UserDetails loadUserByUsername(String Id) throws UsernameNotFoundException {
        
		MemberInfo member = memberInfoRepository.findById(Id);

        if(member == null){
            throw new UsernameNotFoundException(Id);
        }

        return User.builder()
                .username(member.getEmail())
                .password(member.getPwd())
                .build();
    }
	
	
    @Transactional
    public void deleteMemberInfo(String id) {
    	MemberInfo memberInfo = memberInfoRepository.findById(id)
    			.orElseThrow(
        	new IllegalArgumentException("해당 회원이 없습니다"+id));
    	memberInfoRepository.delete(memberInfo);
    }
	
}
